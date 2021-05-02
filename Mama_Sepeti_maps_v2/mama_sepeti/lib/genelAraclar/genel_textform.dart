import 'package:flutter/material.dart';

class genelTextFormField extends StatelessWidget {
  String hint_text;
  IconData iconSecim;
  bool sifremi;
  genelTextFormField({@required this.hint_text, this.iconSecim, this.sifremi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextFormField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        obscureText: sifremi,
        decoration: InputDecoration(
          suffixIcon: Icon(
            iconSecim,
            color: Colors.white,
          ),
          hintText: hint_text,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green[500],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}

//hemen giriş yap Yazı Stilleri
TextStyle hemenGirisYap() {
  return TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      letterSpacing: 2);
}

//hesabınız var mı Yazı Stilleri
TextStyle hesabinizVarMi() => TextStyle(fontSize: 16, color: Colors.white);
// mama Yazı Stilleri
TextStyle mamaTextStyle() {
  return TextStyle(
    fontSize: 24,
    color: Colors.white,
    letterSpacing: 15,
  );
}

//Sepeti Yazı Stilleri
TextStyle sepetTextStyle() {
  return TextStyle(fontSize: 54, color: Colors.white, letterSpacing: 15);
}

//Bir hesap oluştur Yazı Stilleri
TextStyle birHesapOlusturTextStyle() {
  return TextStyle(
      color: Colors.white, fontSize: 25, decoration: TextDecoration.underline);
}

class FlutterColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  FlutterColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class bildirimWidgeti extends StatelessWidget {
  String bildirimMesaji;
  bildirimWidgeti({@required this.bildirimMesaji = "Henüz Bildiriminiz Yok"});

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}

//bildirimler Widget
class bildirimlerWidget extends StatelessWidget {
  String bildirimMesaji;
  bildirimlerWidget({@required this.bildirimMesaji = "Henüz Bildirim Yok"});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              bildirimMesaji,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 3,
          color: Colors.white,
        ),
      ],
    );
  }
}

// Profil Bilgiler Mama Yardımı Seviye Bağış Fotoğraflar Paneli
class profilBilgiler extends StatelessWidget {
  String solBilgiIcerigi;
  int solIcerikAdedi;
  String sagBilgiIcerigi;
  int sagIcerikAdedi;
  profilBilgiler(
      {this.solBilgiIcerigi = "",
      this.solIcerikAdedi = 0,
      this.sagBilgiIcerigi = "",
      this.sagIcerikAdedi = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //54 Mama Yardımı
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              //width: double.infinity,
              child: Text(
                solIcerikAdedi.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              alignment: Alignment.center,
              width: 105,
              child: Text(
                solBilgiIcerigi,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
        //22 Seviye
        Column(
          children: [
            Container(
              alignment: Alignment.center,
              //width: double.infinity,
              child: Text(
                sagIcerikAdedi.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              alignment: Alignment.center,
              width: 105,
              child: Text(
                sagBilgiIcerigi,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
