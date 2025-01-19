#include <stdio.h>
#include <stdlib.h>  // For exit() function
#include <sys/types.h>
#include <unistd.h>  // For fork() and getpid() functions

int main()
{
    // Create a new process using fork()
    pid_t pid = fork();

    // Check if fork() failed
    if (pid < 0) {
        // If fork() fails, print error and exit
        perror("fork failed");
        exit(1);  // Exit the program with an error code
    }

    // Print the process ID of both the parent and child process
    // getpid() returns the process ID of the current process
    printf("Hello World! Process ID (pid) = %d\n", getpid());

    return 0;
}
