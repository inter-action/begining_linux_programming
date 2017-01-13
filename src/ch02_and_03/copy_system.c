#include <unistd.h>
// include O_WRONLY,...
#include <sys/stat.h>
// open, write
#include <fcntl.h>
// include under any circumstance
#include <stdlib.h>


// gcc -o copy_system copy_system.c
// time ./copy_system
int main()
{
    char c;
    int in, out;
    in = open("file.in", O_RDONLY);
    out = open("file.out", O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
    while (read(in, &c, 1) == 1)
        write(out, &c, 1);
    exit(0);
}
