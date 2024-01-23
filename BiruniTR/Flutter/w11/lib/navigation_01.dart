import 'package:flutter/material.dart';

class Navigation01MainPage extends StatelessWidget {
  int user_id = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Navigation-01 Home"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var respondedData =
                  await Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Navigation01Page1(user_id);
                },
              ));
              // Geçişin sonucu respondedData değişkeninde saklanır.(Instance of 'Future<dynamic>' : Retrived)
              // Future asenkron methoddur.Asenkronlar methodlar beklenmez.Yani 16.satırdakş kod beklenmeden 23.satıra geçiş yapar.
              print(respondedData.toString() + ": Retrived");
              //print mesajı page 1 den mainpage geçiş yaparken çağrılır.

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(respondedData)));
            },
            child: Text("Go to Page 1")),
      ),
    );
  }
}

// yapıcı method kullanarak main sayfasından page1 sayfasına veri(id) gönderdik.
class Navigation01Page1 extends StatelessWidget {
  int user_id;
  Navigation01Page1(this.user_id);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => CheckStatus(context),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text("Navigation-01 Page 1 ---- user_id : ${user_id}"),
          automaticallyImplyLeading: false,
          titleTextStyle:
              TextStyle(color: const Color.fromARGB(179, 228, 228, 228)),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                await CheckStatus(context);
                Navigator.maybePop(context, "Kullanıcı bilgileri güncellendi");
              },
              child: Text("Back")),
        ),
      ),
    );
  }

  Future<bool> CheckStatus(BuildContext context) async {
    var shouldPop = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Bilgileri Eksiksiz Giriniz!"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text("Tamam"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text("Yinede Çık"),
            ),
          ],
        );
      },
    );
    return shouldPop;
  }
}
