/* 
 * This file defines the types used in this program
 */

#include <stdint.h>

#ifndef _TYPES_H_
#define _TYPES_H_

#define HDRSIZE 8
#define CRCSIZE 2

struct pkthdr {
    uint8_t  type;          // type of the packet
    uint8_t  id;            // an id number used to identify the data sent
    uint16_t seq;           // sequence number of the packet
    uint16_t data_length;   // length of data in this packet, excluding header
    uint16_t checksum;      // CRC checksum
}; 

struct node_t {
  struct pkthdr * hdr;
  char * data;
  struct node_t * next;
};

struct list_t {
  struct node_t * head;
  struct node_t * tail;
};

#endif   
