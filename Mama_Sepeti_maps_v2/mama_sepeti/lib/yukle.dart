import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mama_sepeti/genelAraclar/genel_textform.dart';

class Yukle extends StatefulWidget {
  File dosya;
  bool yukleniyor = false;
  TextEditingController aciklamaTextKontrol = TextEditingController();
  TextEditingController konumTextKontrol = TextEditingController();
  @override
  _YukleState createState() => _YukleState();
}

class _YukleState extends State<Yukle> {
  File dosya;
  bool yukleniyor = false;
  TextEditingController aciklamaTextKontrol = TextEditingController();
  TextEditingController konumTextKontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return dosya == null ? yukleButonu() : gonderiFormu();
  }

  Widget yukleButonu() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterColor("#67864A"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Center(
          child: Text(
            "Gonderi",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(
                  Icons.file_upload,
                  size: 50.0,
                ),
                onPressed: () {
                  fotografSec();
                }),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Gönderi Yükle",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget gonderiFormu() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          "Gönderi Oluştur",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                dosya = null;
              });
            }),
        actions: [
          IconButton(
              icon: Icon(
                Icons.send,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          yukleniyor
              ? LinearProgressIndicator()
              : SizedBox(
                  height: 0.0,
                ),
          SizedBox(
            height: 5.0,
          ),
          TextFormField(
            controller: aciklamaTextKontrol,
            decoration: InputDecoration(
              hintText: "Açıklama yaz",
              contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
            ),
          ),
          TextFormField(
            controller: konumTextKontrol,
            decoration: InputDecoration(
              hintText: "Konum gir",
              contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Image.file(
              dosya,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  fotografSec() {
    return showModalBottomSheet(
        backgroundColor: FlutterColor("#67864A"),
        context: context,
        builder: (BuildContext context) {
          return Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(),
                child: Center(
                  child: Text(
                    "Gönderi oluştur",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Divider(
                height: 5.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(),
                child: InkWell(
                  onTap: () {
                    fotoCek();
                  },
                  child: Center(
                    child: Text(
                      "Fotoğraf çek",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 3.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(),
                child: InkWell(
                  onTap: () {
                    galeridenSec();
                  },
                  child: Center(
                    child: Text(
                      "Galeriden yükle",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 3.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      "İptal",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 3.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          );
        });
  }

  fotoCek() async {
    Navigator.pop(context);
    var image = await ImagePicker().getImage(
        source: ImageSource.camera,
        maxWidth: 800,
        maxHeight: 600,
        imageQuality: 80);

    setState(() {
      dosya = File(image.path);
    });
  }

  galeridenSec() async {
    Navigator.pop(context);
    var image = await ImagePicker().getImage(
        source: ImageSource.gallery,
        maxWidth: 800,
        maxHeight: 600,
        imageQuality: 80);

    setState(() {
      dosya = File(image.path);
    });
  }
}
