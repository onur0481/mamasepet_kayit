import 'package:flutter/material.dart';
import 'package:mama_sepeti/genelAraclar/genel_textform.dart';

class HesapOlustur extends StatefulWidget {
  @override
  _HesapOlusturState createState() => _HesapOlusturState();
}

class _HesapOlusturState extends State<HesapOlustur> {
  final _formAnahtari = GlobalKey<FormState>();
  final _scaffoldAnahtari = GlobalKey<ScaffoldState>();
  String kullaniciAdi, email, sifre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldAnahtari,
      appBar: AppBar(
        backgroundColor: FlutterColor("#314220"),
        title: Center(
            child: Text(
          "Hesap Oluştur",
          style:
              TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 1),
        )),
      ),
      body: Container(
        color: FlutterColor("#67864A"),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formAnahtari,
                child: Column(
                  children: [
                    TextFormField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: "Kullanıcı adınızı giriniz",
                        labelText: "Kullanıcı Adı",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                        errorStyle: TextStyle(fontSize: 16.0),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (girilenDeger) {
                        if (girilenDeger.isEmpty) {
                          return "Kullanıcı adı boş bırakılamaz";
                        } else if (girilenDeger.trim().length < 4 ||
                            girilenDeger.trim().length > 10) {
                          return "En az 4 en fazla 10 karakter olmalıdır!";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (girilen) => kullaniciAdi = girilen,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Emalinizi giriniz",
                        labelText: "Email",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                        errorStyle: TextStyle(fontSize: 16.0),
                        prefixIcon: Icon(
                          Icons.mail,
                        ),
                      ),
                      validator: (girilenDeger) {
                        if (girilenDeger.isEmpty) {
                          return "Email boş bırakılamaz";
                        } else if (girilenDeger.contains("@")) {
                          return "Girilen değer mail formatında olmalı!";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (girilen) => {
                        email = girilen,
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Şifrenizi giriniz",
                        labelText: "Şifre",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                        errorStyle: TextStyle(fontSize: 16.0),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                      validator: (girilenDeger) {
                        if (girilenDeger.isEmpty) {
                          return "Şifre alanı boş bırakılamaz";
                        } else if (girilenDeger.trim().length < 4) {
                          return "Şifre 4 karakterden az olmamalıdır!";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (girilen) => {
                        sifre = girilen,
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          print("Kayıt Yapıldı");
                        },
                        child: Text("Giriş Yap"),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
