#include <stdlib.h>
#include <stdio.h>
#include <limits.h>
#include "list.h"

// Prototypes for static functions
static NODE *create_node(int data);

/** create_list
  *
  * Creates a list by allocating memory for it on the heap.
  * Be sure to initialize head and tail to NULL.
  *
  * @return pointer to an empty linked list
  */
LIST *create_list(void) {
    LIST *plist;
    plist = malloc(sizeof(LIST));
    if (plist == NULL) {
        printf("Failed to allocate memory for list");
        exit(EXIT_FAILURE);
    }
    plist->head = NULL;
    plist->tail = NULL;

    return plist;
}

/** create_node
  *
  * Helper function that creates a node by allocating memory for it on the heap.
  * Be sure to set its pointers to NULL and to set the data
  *
  * @param data an integer to store in the list
  * @return pointer to a node
  */
static NODE *create_node(int data) {
    NODE *pnode;
    pnode = malloc(sizeof(NODE));
    if (pnode == NULL) {
        printf("Failed to allocate memory for node");
        exit(EXIT_FAILURE);
    }
    pnode->data = data;
    pnode->prev = NULL;
    pnode->next = NULL;

    return pnode;
}

/** push_front
  *
  * Adds the data to the front of the linked list
  *
  * @param dllist a pointer to the list
  * @param data an integer to store in the list
  */
void push_front(LIST *dllist, int data) {
    NODE *pnode = create_node(data);

    if (dllist->head != NULL) { // list isn't empty
        pnode->next = dllist->head;
        dllist->head->prev = pnode;
    } else { // list is empty
        dllist->tail = pnode;
    }

    dllist->head = pnode;
    //size++
}

/** push_back
  *
  * Adds the data to the end of the linked list
  *
  * @param dllist a pointer to the list.
  * @param data an integer to store in the list
  */
void push_back(LIST *dllist, int data) {
    // TODO 1.0: Complete this function
    // Make sure you update the tail pointer and the size
    // Don't forget to handle the empty list case!
    NODE *newNode = create_node(data);

    if (dllist->head != NULL) {
      newNode->prev = dllist->tail;
      dllist->tail->next = newNode;
    } else {
      dllist->head = newNode;
    }

    dllist->tail = newNode;
    //size++
}

/** pop_front
  *
  * Removes the node at the front of the linked list and returns its value.
  * Popping an empty list returns -1
  *
  * @param dllist a pointer to the list.
  */
int pop_front(LIST *dllist) {
    // TODO 2.0: Complete this function
    // Make sure you update the head pointer and the size
    // Don't leak memory!
    // Don't forget to handle the empty list case!
  if (dllist->head == NULL) {
    return -1;
  }
  NODE *pnode = dllist->head;
  int pdata = pnode->data;
  dllist->head = pnode->next;

  if (pnode->next == NULL) {
    dllist->tail = NULL;
  }
  free(pnode);
  return pdata;
  //size--;
}

/** pop_back
  *
  * Removes the node at the back of the linked list
  *
  * Popping an empty list returns -1
  * @param dllist a pointer to the list.
  */
int pop_back(LIST *dllist) {
  if (dllist->head == NULL) {
    return -1;
  }

  NODE *pnode = dllist->tail;
  int pdata = pnode->data;

  if (pnode->prev == NULL) {
    dllist->head = NULL;
    dllist->tail = NULL;
  } else {
    pnode->prev->next = NULL;
    dllist->tail = pnode->prev;

  }
  free(pnode);
  return pdata;
}

/** size
  * Gets the number of nodes in the linked list
  *
  * @param dllist a pointer to the list
  * @return The size of the linked list
  */
int size(LIST *dllist) {
    int size = 0;
    NODE *cur = dllist->head;
    while (cur) {
      cur = cur -> next;
      size++;
    }
    return size;
}

/** empty_list
  *
  * Empties the list.  After this is called, the list should be empty.
  *
  * @param dllist a pointer to a linked list.
  *
  */
void empty_list(LIST *dllist) {
  while (dllist->head) {
    pop_front(dllist);
  }
    return;
}

/** traverse
  *
  * Traverses the linked list calling a function on each node's data to modify
  * that node's data.
  *
  * @param dllist a pointer to a linked list.
  * @param function a function that does something to each node's data.
  */
void traverse(LIST *dllist, list_operation function) {
    NODE *p = dllist->head;

    while (p != NULL) {
        p->data = function(p->data);
        p = p->next;
    }
}


int helper(int x) {
  int newInt = x << 10;
  if (newInt < x) {
    newInt = INT_MAX;
  }
  return newInt;
}

/** scale_up
  *
  * Scales each number in the list up by a factor of 1024 (2^10) times for
  * use in fixed point physics math.
  *
  * @param dllist a pointer to a linked list.
  */
void scale_up(LIST *dllist) {
  traverse(dllist, helper);
}
