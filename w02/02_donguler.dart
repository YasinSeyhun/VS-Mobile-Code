void main(List<String> args) {

  print(toplam(10));
  // A- ITERATIF DÖNGÜLER
  //loops-döngüler 

  for(var i =1; i <= 15; i++){
    print(i);
  }

  int sayac =1;
  while(sayac<=15){
    print(sayac);
    sayac++;
  }
  

  sayac= 1;
  do {
    print(sayac);
    sayac ++;

  } while (sayac <= 15);

  //sonsuz döngüler(infinity loops)
/*
  for(;;){
    print("işlem");
    // if(true) break ==> döngüden tamamen çıkar.
    // continue  ==> alt satırları çalışmaz döngü başına döner.
  }

  while(true) {
    //break veya continue ile kontrol edilir for da olduğu gibi
  }
 */
//B-RECURSİVE DÖNGÜLER/ÖZYİNELEMELİ DÖNGÜLER
}
int Fibonacci(int index){
// fib ==> 0 1 1 2 3 5 8 13 21 ...
   print("işlem sayisi");
  return Fibonacci(index-1) + Fibonacci(index-2);
}

// 1 den  n e kadar olan sayıların toplamı

int toplam(int n){
int t = 0;
if(n==0) return 0;
var top =  n + toplam(n-1);
  return top;
}


