#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h> 
#include <unistd.h> 

int main() {
    int child = fork();
    int exitStatus;
    int childPid;
    if (child == 0) {
        // Child process prints a message and its PID
        printf("Child: I am running!!\n\n");
        printf("Child: I have PID: %d\n\n", getpid());

        // Child process sleeps for 4 seconds
        sleep(4);

        // Child process exits with status 100
        exit(100);
    } 
    else {
        // Parent process prints a message
        printf("Parent: I am running and waiting for child to finish!!\n\n");
        childPid = wait(&exitStatus);
        printf("Parent: Child finished execution!, It had the PID: %d, Exit Status: %d\n\n", 
                childPid, WEXITSTATUS(exitStatus)); 
    }

    return 0;
}
