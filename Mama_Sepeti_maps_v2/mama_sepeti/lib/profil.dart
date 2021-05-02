import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mama_sepeti/profildetayi.dart';
import 'package:mama_sepeti/yanmenu.dart';

import 'genelAraclar/genel_textform.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FlutterColor("#314220"),
          title: Center(
            child: Text(
              "Profil",
              style: TextStyle(
                  color: Colors.white, fontSize: 30.0, letterSpacing: 1),
            ),
          ),
        ),
        body: ProfilDetay(),
        drawer: YanMenu(),
      ),
    );
  }
}
