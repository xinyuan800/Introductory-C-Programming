#include <stdio.h>
#include <stdlib.h>

struct _retire_info {
  int months;
  double contribution;
  double rate_of_return;
};
typedef struct _retire_info retire_info;

double calculateBalance(double currentBalance,double rate,int contribution){
  return currentBalance/12 * rate +currentBalance+contribution;
}

void retirement(int startAge,double initial,retire_info working, retire_info retired){
  int age = startAge;
   for(;age<=startAge+working.months+retired.months-1;age++){
     double rate = retired.rate_of_return;
     int contributions = retired.contribution;
     if(age<startAge+working.months){
       rate = working.rate_of_return;
       contributions = working.contribution;
     }
    printf("Age %3d month %2d you have $%.2lf\n",age/12,age%12,initial);
    initial = calculateBalance(initial,rate,contributions);
    }
  
}

int main(){
  retire_info working;
  working.months = 489;
  working.contribution = 1000;
  working.rate_of_return = 0.045;
  retire_info retired;
  retired.months = 384;
  retired.contribution = -4000;
  retired.rate_of_return = 0.01;
  retirement(327,21345,working,retired);
  return EXIT_SUCCESS;
}

