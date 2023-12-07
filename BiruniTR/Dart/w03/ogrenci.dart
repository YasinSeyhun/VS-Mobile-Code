
//class declaration/definition = sınıf tanımlama
//sınıf != obje


class ogrenci {
  //üyelerden oluşur. yani sınıfın içindeki her şeye üye deriz.
  // 01-static üyeler
  // 02-ınstance/kopya üyeler (*)
  //a-field,veri alanları,değişkenler
  /* 
  int? ogrenci_id;
  String? ad;
  String? soyad;
  bool? cinsiyet; 
  */

  //private access modifiers / erişim denetleyicileri

  int? _no;
  String? _ad ;
  String? _soyad;
  bool? _cinsiyet;
  
  //b- properties,özellikler (metot ile değişken arası yapılardır.) (getter - setter)
void set setNo(int no){  
//void olursa metot olur kod kısmında set metot olarak gözükür.
//yani set void olursa metot olmazsa field olarak kullanılabilir.

   this._no = no;
  }

  int? get getNo { 
  return this._no;
  }
}

//c- metotlar,fonksiyonlar
String adinNe() {
  var _ad;
  return "merhaba benim adım $_ad";
}
void sarkiSoyle() {
  print("Şuan senin için şarkı söylüyorum...");
}

double sinavdanKacAldin(String dersKodu) {
  if(dersKodu == "MP1"){
    return 98.98;
  } else {
    return 85.00;
  }

// d- yapıcı metot, constructor



// e- fabrika kurucular, factory constructor , method.



}









