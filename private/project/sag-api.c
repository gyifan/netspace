/*
 * CSCI - Comptuer Networks
 * Project - Stop-and-go Protocol
 * 04/23/2014
 * Yifan Ge
 *
 * Credit: This program is based on Prof. Xianlong Meng's class example:
 * 	udp-client.c
 * 
 * This file implements a Stop-and-go Protocol API. 
 *
 */

#include "sag-api.h"

double gettime()
{
	struct timeval tv;

	wrp_gettimeofday(&tv, NULL);

	return tv.tv_usec+tv.tv_sec*1000000;
}

int send_data(char *host, char *data, int len)
{	
	/*=========== instance fields ==================================*/
	/* socket related instances */
	int sktaddrlen;
	int sd;
	struct addrinfo *ptrh;
	struct sockaddr_in sa;
	struct sockaddr_in cl;

	struct list_t * pkt_list;
	struct node_t * tmpNode; 

	unsigned short crc; // Cyclic Redundancy Check code 16 bits
	struct pkthdr * hdr; // temp header pointer
	char * dat; // temp data
	int ack;
	int sentCnt = 0; // counts the number of resend
	/*==============================================================*/

	/*=========== setup the UDP socket to the host =================*/
	/* Allocates an open socket */
	sd = wrp_socket(AF_INET, SOCK_DGRAM, 0);

	/* Gets server host information */
	getaddrinfo(host, NULL, NULL, &ptrh);

	/* Sets up socket address data for the server */
	memset((char *)&sa, 0, sizeof(sa));
	memcpy(&sa, (struct sockaddr_in *)(ptrh->ai_addr), ptrh->ai_addrlen);
	sa.sin_family	= AF_INET;
	sa.sin_port	= htons(PORT);

	/* Sets up socket address data for the client */
	memset((char *)&cl, 0, sizeof(cl));
	cl.sin_family	= AF_INET;
	cl.sin_addr.s_addr = htonl(INADDR_ANY);
	/* port 0 allows the systme to assign any available port */
	cl.sin_port	= htons(0);
	/* if we insist on using the same port number, then the client
	 * and the server have to run on different hosts to avoid port
	 * number conflict
	 */

	/* Binds the socket to the client */
	wrp_bind(sd, (struct sockaddr *)(&cl), sizeof cl);
	sktaddrlen = sizeof(struct sockaddr_in);
	/*==============================================================*/

	/* Check the length of the data 
	 *  if the data exceeds the max length, break the original data
	 *  to a linked-list of buffers with allowable size.
	 */
	pkt_list = constructPkt(data, len);

	/* Send the linked-list of packets to the host */
	while(!isEmpty(*pkt_list)){
		tmpNode = remove_head(pkt_list);
		len = tmpNode->hdr->data_length + HDRSIZE;
		dat = (char *)wrp_malloc(len);
		memcpy(dat, tmpNode->hdr, HDRSIZE);
		memcpy(&dat[HDRSIZE], tmpNode->data, tmpNode->hdr->data_length);
		do{
			wrp_sendto(sd, dat, len, 0, (struct sockaddr *)&sa, sktaddrlen);
			printf(">> |Client|\n   Send pkt #%d\n", tmpNode->hdr->seq);
			ack = waitAck(sd, (struct sockaddr *)&sa, (socklen_t *)&sktaddrlen, tmpNode->hdr->id, tmpNode->hdr->seq);
			sentCnt++;
		} while(!ack || sentCnt > MAXRESENT);
		if(sentCnt > MAXRESENT){
			printf("Lost Connection. Resent Max Reached.\n");
			exit(-1);
		}
		printf(">> |Client|\n   Received ACK: pkt #%d\n",tmpNode->hdr->seq);
		sentCnt = 0;
	}

	return 0;
}

int recv_data(char *data, int len)
{
	/*=========== instance fields ==================================*/
	/* socket related instances */
	int sktaddrlen;
	int s;                   /* socket descriptor                */
	struct sockaddr_in  sa;  /* socket addr. structure, server   */
	struct sockaddr_in  cl;  /* socket addr. structure, client   */
	
	struct list_t * pkt_list;
	struct node_t * tmpNode;
	char pkt[MAXPKTSIZE];
	struct pkthdr * hdr;
	char * dat;
	int i = 0; // packet counter
	
	char * datacrc; // temp buffer to store data and crc value;
	int  msg_len;
	unsigned short crc; // for crc error check
	uint16_t prev_seq = 1;
	/*==============================================================*/

	/*=========== setup the UDP socket to the host =================*/
	/* Allocate an open socket */
	s = wrp_socket(AF_INET, SOCK_DGRAM, 0);

	/* Set up socket address data for the server */
	memset((char *)&sa, 0, sizeof(sa));
	sa.sin_family      = AF_INET;
	sa.sin_addr.s_addr = htonl(INADDR_ANY);
	sa.sin_port        = htons(PORT);

	/* Bind the socket to the service */
	wrp_bind(s, (struct sockaddr *)(&sa), sizeof sa);
	sktaddrlen = sizeof(struct sockaddr_in);
	/*==============================================================*/

	/* Instantiate the packet list */
	pkt_list = (struct list_t *)wrp_malloc(sizeof(struct list_t));
	pkt_list->head = NULL;
	pkt_list->tail = NULL;

	/* Wait for client message and echo back ACK or NACK */
	do{ // do until get correct transmission
		msg_len = wrp_recvfrom(s, pkt, MAXPKTSIZE, 0, (struct sockaddr *)&cl, (socklen_t *)&sktaddrlen);
		msg_len -= HDRSIZE; // record the total received massage length

		hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);
		memcpy(hdr, pkt, HDRSIZE); // pkt header
		dat = (char *)wrp_malloc(hdr->data_length);
		memcpy(dat, &pkt[HDRSIZE], hdr->data_length); // pkt data
		printf(">> |Server|\n   Received pkt #%d, length: %d\n", hdr->seq, hdr->data_length);
	
		/* Check the crc */
		datacrc = (char *)wrp_malloc(hdr->data_length+2);
		memcpy(datacrc, dat, hdr->data_length);
		memcpy(&datacrc[hdr->data_length], &hdr->checksum, CRCSIZE);
		crc = generate_crc(datacrc, hdr->data_length+2);
		
		if(crc != 0){
			sendNack(s, (struct sockaddr *)&cl, sktaddrlen, hdr->id, hdr->seq);
			printf("   Error Detected. CRC = %d\n   sent NACK: pkt #%d\n", crc, hdr->seq);
			free(hdr);
			free(dat);
			free(datacrc);
		}
	}while(crc != 0);
	
	while (msg_len<len && hdr->seq != 65535) { // there are more pkts
		sendAck(s, (struct sockaddr *)&cl, sktaddrlen, hdr->id, hdr->seq);
		printf("   Success! CRC = %d\n   Sent ACK: pkt #%d\n",crc, hdr->seq);
		if(prev_seq != hdr->seq){
			memcpy(&data[i*MAXDATASIZE], dat, hdr->data_length);
			prev_seq = hdr->seq;
		}
		i++;	
		free(hdr);
		free(dat);
		free(datacrc);
		
		/* Wait for a new packet */
		do{
			msg_len += wrp_recvfrom(s, pkt, MAXPKTSIZE, 0, (struct sockaddr *)&cl, (socklen_t *)&sktaddrlen);
			msg_len -= HDRSIZE; // record the total received massage length

			hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);
			memcpy(hdr, pkt, HDRSIZE); // pkt header 
			dat = (char *)wrp_malloc(hdr->data_length);
			memcpy(dat, &pkt[HDRSIZE], hdr->data_length); // pkt data
			printf(">> |Server|\n   Received pkt #%d, length: %d\n", hdr->seq, hdr->data_length);
			/* Check the crc */
			datacrc = (char *)wrp_malloc(hdr->data_length+2);
			memcpy(datacrc, dat, hdr->data_length);
			memcpy(&datacrc[hdr->data_length], &hdr->checksum, CRCSIZE);
			crc = generate_crc(datacrc, hdr->data_length+2);
			if(crc != 0){
				sendNack(s, (struct sockaddr *)&cl, sktaddrlen, hdr->id, hdr->seq);
				printf("   Error Detected. CRC = %d\n   Sent NACK: pkt #%d\n",crc, hdr->seq);
				free(hdr);
				free(dat);
				free(datacrc);
			}	
		}while(crc != 0);		
	}
	/* Last Packet */
	sendAck(s, (struct sockaddr *)&cl, sktaddrlen, hdr->id, hdr->seq);
	printf("   Success! CRC = %d\n   Sent ACK: pkt #%d\n",crc, hdr->seq);
	if(len>msg_len)
		memcpy(&data[i*MAXDATASIZE], dat, hdr->data_length);
	else{ // request length is shorter than received
		memcpy(&data[i*MAXDATASIZE], dat, len-i*MAXDATASIZE);
		msg_len = len;
	}
	free(hdr);
	free(dat);
	free(datacrc);
	close(s);

	return msg_len;
}

struct list_t * constructPkt(char * data, int len)
{
	struct list_t * pkt_list;
	struct node_t * tmpNode; 
	struct pkthdr * hdr; // temp header pointer
	char * dat; // temp data
	int i=0; // counter

	pkt_list = (struct list_t *)wrp_malloc(sizeof(struct list_t));
	pkt_list->head = NULL;
	pkt_list->tail = NULL;

	while(len>MAXDATASIZE){
		hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);
		dat = (char *)wrp_malloc(sizeof(char)*MAXDATASIZE);
		memcpy(dat, &data[i*MAXDATASIZE], MAXDATASIZE);
		hdr->type = DAT;
		hdr->id = len; // use the lower 8 bit from len as id
		hdr->seq = i;
		hdr->data_length = MAXDATASIZE;
		hdr->checksum = generate_crc(dat, MAXDATASIZE);
		tmpNode = make_node(hdr, dat);
		insert(pkt_list, tmpNode);
		i++;
		len -= MAXDATASIZE;
	}
	hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);
	dat = (char *)wrp_malloc(sizeof(char)*len);
	memcpy(dat, &data[i*MAXDATASIZE], len);
	hdr->type = DAT;
	hdr->id = len; // use the lower 8 bit from len as id
	hdr->seq = 0xFFFF;
	hdr->data_length = len;
	hdr->checksum = generate_crc(dat, len);
	tmpNode = make_node(hdr, dat);
	insert(pkt_list, tmpNode);

	return pkt_list;
}

int sendAck(int sd, struct sockaddr * sa, socklen_t addrlen, int id, int seq)
{
	struct pkthdr * hdr;

	hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);
	hdr->type = ACK;
	hdr->id = id;
	hdr->seq = seq;
	hdr->data_length = 0;
	hdr->checksum = 0;
	
	wrp_sendto(sd, hdr, HDRSIZE, 0, sa, addrlen);

	return 0;
}

int sendNack(int sd, struct sockaddr * sa, socklen_t addrlen, int id, int seq)
{
	struct pkthdr * hdr;

	hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);
	hdr->type = NACK;
	hdr->id = id;
	hdr->seq = seq;
	hdr->data_length = 0;
	hdr->checksum = 0;
	
	wrp_sendto(sd, hdr, HDRSIZE, 0, sa, addrlen);

	return 0;
}

int waitAck(int sd, struct sockaddr * sa, socklen_t * addrlen, int id, int seq)
{
	int msg_len = 0;
	struct pkthdr * hdr;
	struct timeval tv;
	tv.tv_sec = 0;
	tv.tv_usec = WAITTIME;
	if(setsockopt(sd, SOL_SOCKET, SO_RCVTIMEO,&tv,sizeof(tv)) < 0)
	      perror("setsockopt failed.");

	hdr = (struct pkthdr *)wrp_malloc(HDRSIZE);	
printf("waiting for response\n");
	/* Wait for response */
	msg_len = recvfrom(sd, hdr, HDRSIZE, 0, NULL, NULL);
	if(msg_len < 0) // timeout
		return 0;

	if(hdr->id == id && hdr->seq == seq && hdr->type == ACK)
		return 1; // Correct transmission
	else
		return 0; // Incorrect transmission
}
