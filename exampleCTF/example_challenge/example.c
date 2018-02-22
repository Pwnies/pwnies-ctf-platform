#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[]) {
    char flag[1337];
    int fd = open("flag", 0);
    write(1, flag, read(fd, flag, sizeof(flag)));
    close(fd);

    return 0;
}

