import 'dart:async';

Future<void> main(List<String> args) async {
  var islem = Future(() {
    int n = 5;
    int top = 0;
    for (var i = 0; i < n; i++) {
      top += 1;
    }
    return top;
  });
  var sonuc = await islem;
  print(sonuc);
}



//null safety 
