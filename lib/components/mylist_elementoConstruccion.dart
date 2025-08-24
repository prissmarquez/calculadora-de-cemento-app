import 'package:flutter/material.dart';

enum elementos {
  piso,
  banqueta,
  muro,
  pavimento,
  cimentacion,
  losa,
  zapata,
  columna,
}

class MylistElementoconstruccion extends StatefulWidget {
  const MylistElementoconstruccion({super.key});

  @override
  State<MylistElementoconstruccion> createState() =>
      _MylistElementoconstruccionState();
}

class _MylistElementoconstruccionState
    extends State<MylistElementoconstruccion> {
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
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Banqueta"),
            value: elementos.banqueta,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Cimentación"),
            value: elementos.cimentacion,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Columna"),
            value: elementos.columna,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Muro"),
            value: elementos.muro,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Pavimento"),
            value: elementos.pavimento,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Piso"),
            value: elementos.piso,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),

          RadioListTile<elementos>(
            title: Text("Zapata"),
            value: elementos.zapata,
            groupValue: _seleccion,
            onChanged: (elementos? v) => setState(() {
              _seleccion = v;
            }),
          ),


        ],
      ),
    );
  }
}
