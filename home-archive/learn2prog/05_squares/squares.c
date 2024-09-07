#include <stdio.h>
#include <stdlib.h>


/* 
 * Determines if coord is in range between
 * offset (INCLUSIVE) and offset + size (EXCLUSIVE)
 */
int isInRange(int coord, int offset, int size) {
  // if coord is in range, return 1
  // else, return 0
  if(coord>=offset&&coord<offset+size){
    return 1;
  }
  return 0;
}

/*
 * Determines if coord is at border of offset or
 * offset + size
 */
int isAtBorder(int coord, int offset, int size) {
  // if coord is equal to offset or offset + size
  // return 1, else return0
  if(coord==offset||coord==offset+size-1){
    return 1;
  }
  return 0;
}

void squares(int size1, int x_offset, int y_offset, int size2) {
  //compute the max of size1 and (x_offset + size2).  Call this w
  int w=size1;
  if(size1<x_offset+size2){
    w = x_offset+size2;
  }
  //compute the max of size1 and (y_offset + size2).  Call this h
    int h = size1;
    if(size1<y_offset+size2){
      h = y_offset+size2;
    }
  //count from 0 to h. Call the number you count with y
    for(int i=0;i<h;i++){
    //count from 0 to w. Call the number you count with x
      for(int j=0;j<w;j++){
      //check if  EITHER
      //    ((x is between x_offset  and x_offset +size2) AND 
      //     y is equal to either y_offset OR y_offset + size2 - 1 )
      //  OR
      //    ((y is between y_offset and y_offset + size2) AND
      //     x is equal to either x_offset OR x_offset + size2 -1)
      // if so, print a *
	if(isInRange(j,x_offset,size2)&&isAtBorder(i,y_offset,size2)){
	  printf("*");
	}else if(isInRange(i,y_offset,size2)&&isAtBorder(j,x_offset,size2)){
	    printf("*");
	}
	 else if((j<size1&&(i==0||i==size1-1))||(i<size1&&(j==0||j==size1-1))){
	    printf("#");
	  }else{
	    printf(" ");
	  }
      //if not,
      // check if EITHER
      //    x is less than size1 AND (y is either 0 or size1-1)
      // OR
      //    y is less than size1 AND (x is either 0 or size1-1)
      //if so, print a #

      //else print a space
	  }
	printf("\n");
      }
    //when you finish counting x from 0 to w, 
    //print a newline

}
