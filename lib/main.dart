import 'package:flutter/material.dart';
import 'package:portfolio/telas/Home.dart';
import 'package:portfolio/uteis/paleta_cores.dart';

final ThemeData temaPadrao = ThemeData(
    primaryColor: PaletaCores.corPrimaria,
    accentColor: PaletaCores.corDestaque
);

void main() {
  runApp(MaterialApp(
    title: "Portfólio Reginaldo Silva",
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: temaPadrao,
  ));
}
