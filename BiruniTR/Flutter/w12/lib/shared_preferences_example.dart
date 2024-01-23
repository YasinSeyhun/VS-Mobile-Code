import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//onCheck fonksiyonunun içine yazılan setState fonksiyonu ekranda değişiklik olursa diye çağrılır.

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _userFieldController = TextEditingController();
  var _passwordFieldController = TextEditingController();

  bool isRememberMe = false;

  _loadCredentials() async {
    var database = await SharedPreferences.getInstance();

    setState(() {
      _userFieldController.text = database.getString("username") ?? "";
      // çift soru işareti null-checktir
      _passwordFieldController.text = database.getString("password") ?? "";
      isRememberMe = database.getBool("isRememberMe") ?? false;
    });
  }

  _saveCredentials() async {
    var database = await SharedPreferences.getInstance();
    //geçiçi veri alanı (getInstance)

    if (isRememberMe) {
      await database.setString("username", _userFieldController.text);
      await database.setString("password", _passwordFieldController.text);
    } else {
      await database.remove("username");
      await database.remove("password");
      database.setBool("isAuth", false);
    }
    await database.setBool("isRememberMe", isRememberMe);
  }

  @override
  void initState() {
    super.initState();

    _loadCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Preferences')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _userFieldController,
              decoration: InputDecoration(labelText: 'User Name'),
            ),
            TextField(
              controller: _passwordFieldController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            Row(
              children: [
                Checkbox(
                  value: isRememberMe,
                  onChanged: (value) {
                    isRememberMe = value!;
                    setState(() {});
                  },
                ),
                Text("Remember Me"),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_userFieldController.text == "ysnsyhn" &&
                      _passwordFieldController.text == "1903") {
                    var database = await SharedPreferences.getInstance();
                    if (isRememberMe) {
                      database.setBool("isAuth", true);
                    }
// bu kişi artık yetkili mi?
                    Navigator.pushNamed(context, "HomePage");
                  } else {}

                  await _saveCredentials();
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var database = await SharedPreferences.getInstance();
              database.setBool("isAuth", true);

              Navigator.pop(context);
            },
            child: Text("Exit")),
      ),
    );
  }
}
