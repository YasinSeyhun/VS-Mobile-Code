
void main(List<String> args) {
  
}


abstract class Matematik {  
  
final PI = 3.14;

double toplama(double a , double b);
double cikarma(double a , double b);
double carpma(double a , double b);
double bolme(double a , double b);


}

abstract class IleriMatematik {
  
  final e = 2.18;

double Integral(double f , double x);
double turev(double f , double x);
double sureklilik(double f , double x);
}

class hesapMakinesi {
  
}

//class dortislem extends hesapmakinesi implements matematik,ilerimatematik{}

//abstract soyun sınıftır ve sanal metot bulundurabilir (örn:kodladığımız double metotta ; kullanımı)
// interface bir sınıf değildir veri yapısıdır . içine gövdesi olan bir metot koyamazsın hepsi soyut olmalıdır.
// interface 'ler sadece implements yapılırken abstract sınıflar hem extends hem implements yapılabilir.
// soyut sınıftan soyut sınıfa implements yapılabilir.(ikiside soyut sınıf olduğu için)
// interface i interface e implements ine inheritance denir. 
// dart dilinde interface yoktur, soyut sınıflar vardır


class dortIslem extends Matematik implements IleriMatematik {
  
double get PI => throw UnimplementedError();

  @override
  double bolme(double a, double b) {
    return a/b;
  }

  @override
  double carpma(double a, double b) {
    return a*b;
  }

  @override
  double cikarma(double a, double b) {
    return a-b;
  }

  @override
  double toplama(double a, double b) {
    return a+b;
  }
  
  @override
  double Integral(double f, double x) {
    
    throw UnimplementedError();
  }
  
  @override
  
  double get e => 2.18;
  
  @override
  double sureklilik(double f, double x) {
   
    throw UnimplementedError();
  }
  
  @override
  double turev(double f, double x) {
    
    throw UnimplementedError();
  }
  
  

}