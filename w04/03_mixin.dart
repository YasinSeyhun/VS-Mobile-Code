void main(List<String> args) {


}



mixin ucabilen{
  int a =1; 
  void uc(){
    print("ucabilirim");
  }
}

mixin yuzebilen{
int a =2;
void yuz(){
  print("yüzebilirim");
}
}

mixin kosabilen{
  int a = 3 ;
  void kos(){
    print("kosabilirim");
  }
}

class Kus with ucabilen,kosabilen{
  void m(){
    print(a);
    uc();
    kos(); 
     }
}
