#include <stdio.h>
#include <stdlib.h>
#include <string.h>


//This function is used to figure out the ordering
//of the strings in qsort.  You do not need
//to modify it.
int stringOrder(const void * vp1, const void * vp2) {
  const char * const * p1 = vp1;
  const char * const * p2 = vp2;
  return strcmp(*p1, *p2);
}
//This function will sort and print data (whose length is count).
void sortData(char ** data, size_t count) {
  qsort(data, count, sizeof(char *), stringOrder);
}

void getAndSortData(FILE* f){
char** data = NULL;
int n = 0;
  char* line = NULL;
  ssize_t len = 0;
  size_t sz = 0;
 while((len = getline(&line,&sz,f))>0){
	 n++;
	 data = realloc(data,n*sizeof(*data));
	 data[n-1] = malloc(len+1);
	 strcpy(data[n-1],line);
 }
 free(line);

 sortData(data,n);

for(int i=0;i<n;i++){
	  printf("%s",data[i]);
	  free(data[i]);
  }
free(data);
}

int main(int argc, char ** argv) {
  FILE* f = stdin;
	if(argc==1){
  getAndSortData(f);
	}else{
  for(int i=1;i<argc;i++){
    f = fopen(argv[i],"r");
    if(f==NULL){
	    fprintf(stderr,"invalid filename\n");
	    exit(EXIT_FAILURE);
  }
    getAndSortData(f);
    fclose(f);
  }
	}
  //WRITE YOUR CODE HERE!
  
  return EXIT_SUCCESS;
}
