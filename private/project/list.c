#include "list.h"
#include <stdio.h>
/*
 * Insert a node to the list
 * Precondition: node is made, list itself is not null
 * Postcondition: node is inserted into the list
 */
void insert(struct list_t * list, struct node_t * node) {

  if (list->head == NULL) { // new list
    list->head = node;
  } else {   // list already there
    list->tail->next = node;
  }
  list->tail = node;
}

/*
 * Check if the list is empty
 * Precondition: list itself is not null
 * Postcondition: none changed
 */
int isEmpty(struct list_t list) {

  return (list.head == NULL);
}

/*
 * Make a list node with a header and a data pointers
 * Precondition: none
 * Postcondition: a list node is made and returned
 */
struct node_t * make_node(struct pkthdr * hdr, char * data) {

  struct node_t * anode = (struct node_t *)malloc(sizeof(struct node_t));
  anode->hdr = hdr;
  anode->data = data;
  anode->next = NULL;

  return anode;
}

/*
 * Print the content of the list
 * Precondition: a list has been made
 * Postcondition: the content of the list printed
 */
void print_list( struct list_t *thislist ) {

  struct node_t *current = thislist->head;
  while (current != NULL) {
    printf("node %d ->\n", current->hdr->seq);
    printf("type:%d, len:%d\n", current->hdr->type, current->hdr->data_length);
    current = current->next;
  }
}

/*
 * Remove the head node of the list
 * Return the pointer to head node
 */
struct node_t * remove_head(struct list_t *thislist){

	struct node_t *tmp = thislist->head;
	if(tmp != NULL)
		thislist->head = tmp->next;
	return tmp;
}
