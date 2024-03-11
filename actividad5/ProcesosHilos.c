#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

int main(){
    pid_t pid;
    pthread_t thread_id;
    
    printf("Proceso0: PID = %d\n",getpid());
    pid = fork();
    if(pid == 0){
        printf("Proceso1: PID = %d\n",getpid());
        fork();
        printf("Proceso2: PID = %d\n",getpid());
        pthread_create(&thread_id, NULL, NULL, NULL);
        printf("Hilo: TID = %lu\n",thread_id);
    }else{
        printf("Proceso3: PID = %d\n",getpid());
    }
    fork();
    printf("Proceso4: PID = %d\n",getpid());

    return 0;
}