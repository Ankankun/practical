#include <stdio.h>  
#include <unistd.h>  

int main() {  
    char *const argv[] = {"ls", "-l", NULL};  
    execvp("ls", argv);  

    // The following code is executed only if execvp fails  
    perror("execvp"); // Print error message  
    return 1;  
}
