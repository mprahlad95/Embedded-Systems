#include<stdio.h>
int main()
{
int i;
i=fork();
if(i==0)
{
printf("Child Process \n");
printf("PID : %d PPID : %d \n",getpid(),getppid());
}
else
{
printf("Parent Process\n");
printf("PID : %d PPID : %d \n",getpid(),getppid());
printf("\n");
}
return 0;
}

//Parent Process
//PID : 6112 PPID : 5379 

//Child Process 
//PID : 6113 PPID : 6112 

