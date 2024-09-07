void rotate(char matrix[10][10]){
  int temp[10][10];
  for(int i=0;i<10;i++){
    for(int j=0;i<10;j++){
      temp[j][9-i] = matrix[i][j]
	}
  }
  for(int i=0;i<10;i++)
    for(int j=0;j<10;j++)
      martix[i][j] = temp[i][j];
  return;
			
}
