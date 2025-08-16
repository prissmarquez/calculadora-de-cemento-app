import 'package:flutter/material.dart';

const List<String> unidades = <String>['metros', 'centimetros', 'pulgadas'];

class Mydropdownbutton extends StatefulWidget {
   Mydropdownbutton({super.key});

  @override
  State<Mydropdownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Mydropdownbutton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: selectedValue,
      hint: Text('Selecciona una unidad'),
      items: unidades.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
    );
  }
}