float [] number;
float [] newarrray;
float x;

void setup(){
  x=1;
  number = looper(); 
}

void draw () {
  number = multa (number, x);
  number = adda (number, looper());
  x++;
  number = multa (number, (1/x));
  println(number);
  println(x);
}

float [] multa (float [] array1, float m){
  for (int x = 0; x < array1.length; x ++ ){
    array1[x] = array1[x] * m;
  }
  return array1;
}

float [] adda(float [] array1, float [] array2){
  for (int x = 0; x < array1.length; x ++ ){
    array1[x] = array1[x]+ array2[x];
  }
  return array1;
}

float [] looper(){
  newarrray = new float [10];
  for (int x = 0; x < newarrray.length; x++){
    newarrray[x] = random (10);
  }
  newarrray = insertsort(newarrray);
  return newarrray;
}

float [] shift (int start, int stop, float [] array){
  float y = array [stop];
  for (int x = stop-1; x >= start; x--){
    array [x+1] = array [x];
  }
  array [start]= y;
  return array;
}

float [] insertsort (float [] array){
  for (int y = 0; y < ((array.length)-1); y++){
    if (array [y] > array [y+1]){
      array = place (array, y+1);
    }
  }
  return array;
}

float [] place (float [] array, int needtoplace){
   for (int y = 0; y < (array.length); y++){
    if (array [needtoplace] < array [y]){
      array = shift (y, needtoplace, array);
      y=10;
    }
  }
  return array;
}

  
  
  
  
  
  
  
  
  
  