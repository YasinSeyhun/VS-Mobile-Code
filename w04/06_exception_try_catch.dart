void main(List<String> args) {
  int a = 1;
  int b = 0;

if(b==0){
  throw Exception("Sifira Bölme Hatasi!!");
}else{

}

  try {
     print(a/b);
  } 
  on IntegerDivisionByZeroException{        //opsolet yani eski sürüme ait
   

  } on FormatException{


  } on BenimHatam{


  }
  
  
  catch (e) {
    print(e);
  }

  
}

class BenimHatam implements Exception {
  String mesaj;
  BenimHatam(this.mesaj);

  String toString(){
    return "Exception : 405 ,Sifira bölme hatasi";
  }
}