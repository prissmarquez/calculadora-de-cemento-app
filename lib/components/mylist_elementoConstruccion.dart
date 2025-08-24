import 'package:flutter/material.dart';

enum elementos {piso, banqueta, muro, pavimento, cimentacion, losa, zapa, columna}

class MylistElementoconstruccion extends StatefulWidget {
  const MylistElementoconstruccion({super.key});

  @override
  State<MylistElementoconstruccion> createState() => _MylistElementoconstruccionState();
}

class _MylistElementoconstruccionState extends State<MylistElementoconstruccion> {
  elementos? _seleccion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RadioListTile<elementos>(
            title: Text("Losa"),
            value: elementos.losa,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            });,
            )
        ],
      ),
    );
  }
}