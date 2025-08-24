import 'package:flutter/material.dart';

enum Resistencia { r100, r150, r200, r250, r300, r350 }

class EjemploRadioListTile extends StatefulWidget {
  const EjemploRadioListTile({super.key});

  @override
  State<EjemploRadioListTile> createState() => _EjemploRadioListTileState();
}

class _EjemploRadioListTileState extends State<EjemploRadioListTile> {
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
            )
        ],
      )
    );
  }
}
