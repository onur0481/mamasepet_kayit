import 'package:flutter/material.dart';
import 'package:mama_sepeti/genelAraclar/genel_textform.dart';
import 'package:mama_sepeti/giris_ekrani.dart';

class YanMenu extends StatefulWidget {
  @override
  _YanMenuState createState() => _YanMenuState();
}

class _YanMenuState extends State<YanMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            tileColor: FlutterColor("#67864A"),
            title: Center(
              child: Text(
                "MAMA SEPETİ",
                style: TextStyle(
                    color: Colors.white, fontSize: 20.0, letterSpacing: 1),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ayarlar ve gizlilik",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Icon(
                          Icons.settings,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 3.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GirisEkrani()));
                  },
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Çıkış yap",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Icon(
                          Icons.exit_to_app,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 3.0,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
