#include <stdlib.h>

unsigned power(unsigned x, unsigned y);

void test_power(unsigned x, unsigned y, unsigned ans){
  if(power(x,y)!=ans)
     exit(EXIT_FAILURE);
}

int main(){
  test_power(0,0,1);
  test_power(0,1,0);
  test_power(10000,2,100000000);
  test_power(2,4,16);
  test_power(5,3,125);
  test_power(2,0,1);
  test_power(5,1,5);
  return EXIT_SUCCESS;
}
