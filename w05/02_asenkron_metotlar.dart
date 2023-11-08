void main(List<String> args) async {
  print("Başlangiç");
  //await isA(); // asenkron metotu senkron yapabilmek ve çağırabilmek içni await kullanırız
  /*Future.delayed(Duration.zero, () async {
    var sonuc = await isB();
    print(sonuc);
  });
*/

  isB().then((sonuc) {
    print(sonuc);
  }).whenComplete(() {});
  print("Acil İş");
  print("Bitiş");
}

Future isA() async {
  await Future.delayed(Duration(seconds: 0), () async {
    // await metotların senkron olarak çalışmasını sağlar
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("İş A $i");
    }
    print("İş A biti");
  });
}

Future<String> isB() async {
  await Future.delayed(Duration(seconds: 0), () async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      print("İş B $i");
    }
  });

  return "İş B bitti";
}