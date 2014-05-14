/*
 * CSCI 363 - Computer Networks
 * Lab 06 - UDP
 * 03/16/2014
 * Yifan Ge
 *
 * Credit: This program is based on Prof. Xianlong Meng's class example.
 * 	udp-server.c
 *
 */

/*
 * A simple UDP echo server
 */
#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "wrappers.h"
#include "crc-api.h"
#include "sag-api.h"

#define MAXLENGTH 2147483647

int main(int argc, char*argv[]) {
	
	char * data;
	int len = MAXLENGTH;
	int recved;
	char * filename;
	
	FILE * out;
	
	data = (char *)wrp_malloc(sizeof(char)*len);
	while(1){
		/* Get filename from sender */
		recved = recv_data(data, len);
		filename = (char *)wrp_malloc(recved+6);
		strncpy(&filename[0], "copy-", 5);
		strncpy(&filename[5], data, recved);
		filename[recved+6] = '\0';
		
		/* Get file data */
		recved = recv_data(data, len);
		out = fopen(filename, "w");
		if(out==NULL){
			printf("Fail to open output %s\n", filename);
			return 1;
		}
       		printf(">>>>>>>>>>>>>>>>>>>>>>>>>>\n");
	        printf("  Session End\n");
	        printf("<<<<<<<<<<<<<<<<<<<<<<<<<<\n");
		printf(">> |Server|\n");
		printf("   Received File: %s\n   Received File Length: %d\n", filename, recved);
		fwrite(data, recved, 1, out);
		fflush(out);
		printf("wrote the message\n");
		fclose(out);
		printf("closed \n");
	}
	return 0;
}
