#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
// writing null pointer result segmentation fault
int main()
{
    char *some_memory = (char *)0;
    printf("A read from null %s\n", some_memory);
    sprintf(some_memory, "A write to null\n");
    exit(EXIT_SUCCESS);
}
