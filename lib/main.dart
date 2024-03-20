import 'package:flutter/material.dart';
import 'package:uribe0418/pantallas0418/panel0418/panel_pantalla0418.dart';

void main() => runApp(MiAppNeutrogena0418());

class MiAppNeutrogena0418 extends StatelessWidget {
  const MiAppNeutrogena0418({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Neutrogena Uribe 0418",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff67d2e0)),
        useMaterial3: true,
      ),
      home: PanelPantalla0418(),
    );
  }
}
