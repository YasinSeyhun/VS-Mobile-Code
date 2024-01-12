import 'package:flutter/material.dart';

class registationForm extends StatefulWidget {
  const registationForm({super.key});

  @override
  State<registationForm> createState() => _RegistationFormState();
}

class _RegistationFormState extends State<registationForm> {
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _email = "";
  String _password = "";
  String _formStatus = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_formStatus),
              TextFormField(
                decoration: InputDecoration(labelText: "Adı"),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Adı boş olamaz";
                  }
                },
                onSaved: (newValue) {
                  _name = newValue!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Email boş olamaz";
                  }
                },
                onSaved: (newValue) {
                  _email = newValue!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Şifre"),
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Şifre boş olamaz";
                  }
                },
                onSaved: (newValue) {
                  _password = newValue!;
                },
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      //Database kodu buraya yazılır.
                      // _name = "";
                      // _email = "";
                      // _password = "";

                      setState(() {
                        _formStatus = "Kayıt Başarılı";
                      });
                    } else {
                      setState(() {
                        _formStatus = "Hata";
                      });
                    }
                  },
                  child: Text("Kaydet")),
            ],
          ),
        ),
      ),
    );
  }
}
