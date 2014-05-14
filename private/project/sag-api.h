/*
 * CSCI - Computer Networks
 * Project - Stop-and-go Protocol
 * 04/23/2014
 * Yifan Ge
 *
 * Credit: This program is based on Prof. Xianlong Meng's class example:
 *      udp-client.c
 *
 * This file is the header file for Stop-and-go Protocol API
 *
 */

#include <netinet/in.h>
#include <netdb.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>
#include <string.h>

#include "wrappers.h"
#include "crc-api.h"
#include "list.h"
#include "types.h"

#ifndef _SAG_API_H
#define _SAG_API_H

#define MAXDATASIZE 65499
#define MAXPKTSIZE 65507
#define PORT 14017

#define WAITTIME 100000
#define MAXRESENT 20

#define DAT  0
#define ACK  1
#define NACK 2

double gettime();
int send_data(char *host, char * data, int len);
int recv_data(char *data, int len);
struct list_t * constructPkt(char * data, int len); 
int sendAck(int sd, struct sockaddr * sa, socklen_t addrlen, int id, int seq);
int sendNack(int sd, struct sockaddr * sa, socklen_t addrlen, int id, int seq);
int waitAck(int sd, struct sockaddr * sa, socklen_t *addrlen, int id, int seq);
#endif
