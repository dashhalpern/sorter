float [] number;

void setup(){
 number =  createarray(150000);
 float x = millis();
 quicksort (number, 0, (number.length-1));
 println(millis() - x);
 //println(number);
}
void quicksort(float [] a, int p,int r){
  if(p < r){
    int q = partition(a,p,r);
    quicksort(a,p, q-1);
    quicksort(a,q+1, r);
  }
}

int partition(float [] a, int p,int r){
  int i = p;
  for(int j = p; p<r-1; p++){
    if(a[j] < a[r]){
      exchange(i,j);
      i++;
    }
  }
  exchange(i , r);
  return i;
}

void exchange(int a, int b){
  float c = number[a]; 
  number[a]= number[b];
  number[b]= c;
}


float [] createarray(int len){
 float []newarrray = new float [len];
  for (int x = 0; x < newarrray.length; x++){
    newarrray[x] = random (10);
  }
  return newarrray;
}