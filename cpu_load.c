#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<time.h>

typedef struct {
	long user;
	long nice;
	long system;
	long idle;
	long iowait;
	long irq;
	long softirq;
	long steal;
} stat;

stat *sendStat(stat *data){
	FILE *procf = fopen("/proc/stat", "r");
	fscanf(procf, "cpu %ld %ld %ld %ld %ld %ld %ld %ld", &data->user, &data->nice, &data->system, &data->idle, &data->iowait, &data->irq, &data->softirq, &data->steal);
	fclose(procf);
	
	printf("cpu %ld %ld %ld %ld %ld %ld %ld %ld\n", data->user, data->nice, data->system, data->idle, data->iowait, data->irq, data->softirq, data->steal);
	return data;
}

void delay(int ms){
	clock_t timeDelay = ms + clock();
	while(timeDelay > clock());
}

void main(){
	stat *p_proc, proc, proc2;
	p_proc =  sendStat(&proc);

	sleep(1);
	
	sendStat(&proc2);	

	/*int num;*/
	/*FILE *procf;*/
	/*procf = fopen("/proc/stat","r");*/
	/*fscanf(procf, "cpu %ld %ld %ld %ld %ld %ld %ld %ld", &proc.user, &proc.nice, &proc.system, &proc.idle, &proc.iowait, &proc.irq, &proc.softirq, &proc.steal);*/
	/*fclose(procf);*/

	/*long prevWork, prevIdle, prevTotal, work, idle, total, dWork, dIdle;*/

	/*prevWork = proc.user + proc.nice + proc.system + proc.irq + proc.softirq + proc.steal;*/
	/*prevIdle = proc.idle + proc.iowait;*/
	/*prevTotal = prevWork + prevIdle;*/
	
	/*delay(100000);*/

	/*FILE *procf2;*/
	/*procf2 = fopen("/proc/stat","r");*/
	/*fscanf(procf2, "cpu %ld %ld %ld %ld %ld %ld %ld %ld", &proc.user, &proc.nice, &proc.system, &proc.idle, &proc.iowait, &proc.irq, &proc.softirq, &proc.steal);*/
	/*fclose(procf2);*/

	/*work = proc.user + proc.nice + proc.system + proc.irq + proc.softirq + proc.steal;*/
	/*idle = proc.idle + proc.iowait;*/
	/*total = work + idle;	*/

	/*dWork = total - prevTotal;*/
	/*dIdle = idle - prevIdle;*/

	/*double result;*/
	/*result = (double)(dWork - dIdle)/(double)dWork;*/
	/*printf("%.2lf",result*100);*/
}
