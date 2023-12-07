void main(List<String> args) {
  
//strongly typed dildir.
//dynamic tipleri de destekler.

//NOT: Herhangi bir kodlama dili ya strongly ya da dynamic bir dildir.C,C+ vs. stronglydir fakat çoğu dynmic'i destekler.
//Sadece dynamic dil olan diller : js,python...


int a = 5; //strongly type dildir çünkü verinin tipi yazılması gerekir.

//Dart Veri Yapısı
//1- number types
// int, double
//2-string types
//3-boolean types
//4-other objects

int yas = 15;
double maas = 1500.00;

DateTime dogumGunu = DateTime(2000,12,12);
String ad = "yasin";
bool dogru = true;

Object yas1= 15;
yas1 = "";
Object file = "file1";

// String interpolasyon 
print("Ad: " + ad + " yaş: " + yas.toString() + "dTarih : " + dogumGunu.toString());
 

print("Ad:   $ad Yaş:  $yas  dTarih:  $dogumGunu");
//Bu işleme interpolasyon denir.


//var ile değişken tanımlama (dynamic değildir)

var a1=15;
var isim1 = "Ahmet";


}