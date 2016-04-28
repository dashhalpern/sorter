import java.util.List;

ArrayList <Comparable> number = new ArrayList <Comparable>();
float x;

void setup(){
  number = createarray(5);
    x = millis();
  number = sorter (number);
  println(millis() - x);
  println(number);
}

<T extends List <Comparable>> ArrayList<Comparable> sorter (T  array){
   int n = floor(array.size() /2);
   if (n == 0){
     return (new ArrayList<Comparable>(array)); 
   }else{
     int q = (array.size() - n);
     ArrayList <Comparable> arrayn = new ArrayList <Comparable>();
     ArrayList <Comparable> arrayq = new ArrayList <Comparable>();
     for (int x = 0; x < n; x ++ ){
        arrayn.add(array.get(x));
      }
     for (int x = n; x < n+q; x ++ ){
        arrayq.add(array.get(x));
      }
      return (merger (sorter(arrayn), (sorter(arrayq))));
    }
}

ArrayList <Comparable> merger (ArrayList <Comparable> array1, ArrayList <Comparable> array2){
  int x = ( array1.size() + array2.size());
  ArrayList <Comparable> newarrray = new ArrayList <Comparable>();
  int i = 0;
  int j = 0;
  for(int y = 0; y < x; y ++ ){
    int t = array1.get(i).compareTo(array2.get(j));
    if (t == 1){
      newarrray.add(array2.get(j));
      j++;
      if (j == array2.size()){
        for (int z = (y+1); z<x; z++ ){
                newarrray.add(array1.get(i));
                i++;
        }
        y=x;
      }
    }else{
      newarrray.add(array1.get(i));
      i++;
      if (i == array1.size()){
        for (int z = (y+1); z<x; z++ ){
                newarrray.add(array2.get(j));
                j++;
        }
        y=x;
      }
    }
  }
  return newarrray;
}

ArrayList <Comparable> createarray(int len){
 ArrayList <Comparable> newarray = new ArrayList <Comparable>();
  for (int x = 0; x < len; x++){
     newarray.add(floor(random (15)));
  }
  return newarray;
}