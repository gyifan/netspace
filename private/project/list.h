#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "types.h"

void insert(struct list_t * list, struct node_t * node);
int isEmpty(struct list_t list);
struct node_t * make_node(struct pkthdr * hdr, char * data);
void print_list(struct list_t * list);
struct node_t * remove_head(struct list_t * list);

