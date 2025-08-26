import 'package:flutter/material.dart';

enum Resistencia { r100, r150, r200, r250, r300, r350 }

class MyradiobuttonResistencia extends StatefulWidget {
  const MyradiobuttonResistencia({super.key});

  @override
  State<MyradiobuttonResistencia> createState() => _EjemploRadioListTileState();
}

class _EjemploRadioListTileState extends State<MyradiobuttonResistencia> {
  Resistencia? _seleccion; // valor actualmente seleccionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          RadioListTile<Resistencia>(
            title: Text("100 kg/cm2"),
            value: Resistencia.r100,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),

          RadioListTile<Resistencia>(
            title: Text("150 kg/cm2"),
            value: Resistencia.r150,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),

            RadioListTile<Resistencia>(
            title: Text("200 kg/cm2"),
            value: Resistencia.r200,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),
          
          RadioListTile<Resistencia>(
            title: Text("250 kg/cm2"),
            value: Resistencia.r250,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),
          RadioListTile<Resistencia>(
            title: Text("250 kg/cm2"),
            value: Resistencia.r250,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),
          RadioListTile<Resistencia>(
            title: Text("300 kg/cm2"),
            value: Resistencia.r300,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),

          RadioListTile<Resistencia>(
            title: Text("350 kg/cm2"),
            value: Resistencia.r200,
            groupValue: _seleccion,
            onChanged:(Resistencia? v) => setState(() {
              _seleccion = v;
            }),
            ),
        ],
      )
    );
  }
}
