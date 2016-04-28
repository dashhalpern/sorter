float [] number;
float x;

void setup(){
  number = createarray(1000000);
    x = millis();
  number = sorter (number);
  println(millis() - x);
  //println(number);
}

float [] sorter (float [] array){
   int n = floor(array.length /2);
   if (n == 0){
     return array; 
   }else{
     int q = (array.length - n);
     float []arrayn = new float [n];
     float []arrayq = new float [q];
     for (int x = 0; x < n; x ++ ){
        arrayn [x] = array[x];
      }
     for (int x = n; x < n+q; x ++ ){
        arrayq [x - n] = array[x];
      }
      return (merger (sorter(arrayn), (sorter(arrayq))));
    }
}

float [] merger (float [] array1, float [] array2){
  int x = ( array1.length + array2.length);
  float []newarrray = new float [x];
  int i = 0;
  int j = 0;
  for(int y = 0; y < x; y ++ ){
    if (array1[i] > array2[j]){
      newarrray [y] = array2 [j];
      j++;
      if (j == array2.length){
        for (int z = (y+1); z<x; z++ ){
                newarrray [z] = array1 [i];
                i++;
        }
        y=x;
      }
    }else{
      newarrray [y] = array1 [i];
      i++;
      if (i == array1.length){
        for (int z = (y+1); z<x; z++ ){
                newarrray [z] = array2 [j];
                j++;
        }
        y=x;
      }
    }
  }
  return newarrray;
}

float [] createarray(int len){
 float []newarrray = new float [len];
  for (int x = 0; x < newarrray.length; x++){
    newarrray[x] = random (10);
  }
  return newarrray;
}