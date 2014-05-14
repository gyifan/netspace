#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/stat.h>

#include "wrappers.h"
#include "sag-api.h"

int main(int argc, char* argv[])
{
        char *msg;
        int msgLen;
        char *host;
        char *filename;

        /* Check if command is correct */
        if(argc != 3){
                printf("USAGE: source [server host name] [filename]\n");
                exit(-1);
        }
        
        /* Gets parameters from input */
        host = argv[1];
        filename = argv[2];

        /*
         * Open the file and call fstat
         *      int fstat(int fd, struct stat *buf);
         * fstat returns 0 on success. The file stats is returned in struct ptr
         *
         */
        int fd;
        struct stat buf;
        if(-1 == (fd = open(filename, O_RDONLY))){
                printf("Error openning the file\n");
                exit(-1);
        }
        if(0 != fstat(fd, &buf)){
                printf("Error fstat the file\n");
                exit(-1);
        }
        msgLen = buf.st_size;

        /* Read the whole file to msg */
        msg = (char *)wrp_malloc((msgLen+2)*sizeof(char));
        wrp_readn(fd, msg, msgLen);

        printf("\n==========================\n");
        printf("  Starting a new session.\n");
        printf("==========================\n");
        printf(">> |Source|\n");
	printf("   Filename: %s\n", filename);
        printf("   Total File Length: %d\n", msgLen);
	printf("--------------------------\n");
	
	/* Send file name to host */
	send_data(host, filename, strlen(filename)+1); // Send '\0'

        /* Send msg to host */
        send_data(host, msg, msgLen);
	printf("<< |Source| End\n");
	free(msg);
        return 0;
}

