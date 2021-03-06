/* 
 * The main function, testing our PCP stack implementation.
 * 
 * Author: ruedi.arnold@hslu.ch
 */

#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

/*
 * 
 */
int main(int argc, char** argv) {
    stack myStack = init();
    print(myStack);
    top(myStack);
    myStack = push(42, myStack);
    myStack = push(77, myStack);
    myStack = push(1, myStack);
    printf("Is Empty?: %d \n", isEmpty(myStack));
    printf("Number of Elements: %d \n", size(myStack));

/*    print(myStack);
    myStack = push(33, myStack);
    myStack = pop(myStack);
    myStack = push(33, myStack);
    print(myStack);
    element e = top(myStack);
    printf("top element is %i\n", e);
    print(myStack);*/
    return (EXIT_SUCCESS);
}
