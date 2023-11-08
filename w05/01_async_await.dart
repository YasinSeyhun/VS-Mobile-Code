//async (asenkron) ,await (bekle)

void main(List<String> args) async { // asenkron kod yazmak istiyorsak main parantezinin yanına async yazmamız lazım.
  print("işler başladi");

  Future.delayed(Duration(seconds: 1), () async{

  for(var i = 0 ;i < 10 ; i ++){
    await Future.delayed(Duration(seconds: 1)); // await olmadan yazdığımız future kod gereksiz olur print beklemez.
    print("iş A $i ");
  }

print("iş A bitti");
  });

  Future.delayed(Duration(days : 0),()async{
    print("******çok acil bir iş bitti*******");
  });

  for(var i = 0; i < 15; i++){
    print("iş B $i");
    await Future.delayed(Duration(seconds: 2));
  }

  print("iş B bitti");

  

  print("Tüm işler bitti");
}