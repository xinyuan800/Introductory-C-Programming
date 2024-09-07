#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "kv.h"
#include "counts.h"
#include "outname.h"

counts_t * countFile(const char * filename, kvarray_t * kvPairs) {
  //WRITE ME
    FILE * f = fopen(filename,"r");
    if(f==NULL){
        perror("can't open file");
        exit(EXIT_FAILURE);
    }
    counts_t * c = createCounts();
    char * line = NULL;
    size_t sz = 0;
    while(getline(&line,&sz,f)>=0){
        char * p = strchr(line,'\n');
        if(p!=NULL){
            *p = '\0';
        }
        char * value = lookupValue(kvPairs,line);
        addCount(c,value);
    }
    free(line);
    fclose(f);

  return c;
}

int main(int argc, char ** argv) {
  //WRITE ME (plus add appropriate error checking!)
  if(argc<2){
	  perror("lack of inputFile");
	  exit(EXIT_FAILURE);
  }
 //read the key/value pairs from the file named by argv[1] (call the result kv)
kvarray_t* kvPairs = readKVs(argv[1]);
 //count from 2 to argc (call the number you count i)
for(int i=2;i<argc;i++){
    //count the values that appear in the file named by argv[i], using kv as the key/value pair
    //   (call this result c)
    counts_t *  c = countFile(argv[i],kvPairs);
    //compute the output file name from argv[i] (call this outName)
    char* outPutName = computeOutputFileName(argv[i]);
    //open the file named by outName (call that f)
    FILE* f = fopen(outPutName,"w");
    if(f==NULL){
	    perror("can't open file");
	    exit(EXIT_FAILURE);
    }
    //print the counts from c into the FILE f
    printCounts(c,f);

    //close f
    fclose(f);
    //free the memory for outName and c
    free(outPutName);
    freeCounts(c);
    
}

 //free the memory for kv
freeKVs(kvPairs);
  return EXIT_SUCCESS;
}

