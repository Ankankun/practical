#include <stdio.h>  
#include <sys/types.h>  
#include <unistd.h>  
#include <stdlib.h>  
#include <sys/wait.h>  

int main() {  
    pid_t pid;  
    pid = getpid();  
    printf("Before fork %d\n", pid);  
    
    pid = fork();  
    if (pid == 0) {  
        printf("This line from child, \n the child process is %d \n", getpid());  
        execl("/bin/ls", "ls", "-l", (char *)0);  
        exit(0);  
    } else if (pid > 0) {  
        wait(NULL);  
    } else {  
        printf("\n fork failed");  
        exit(1);  
    }  
    
    return 0;  
}
