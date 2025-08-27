import 'package:flutter/material.dart';

const List<String> unidades = <String>['metros', 'centimetros', 'pulgadas'];

class Specialddownbutton extends StatefulWidget {
   Specialddownbutton({super.key});

  @override
  State<Specialddownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Specialddownbutton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      
      value: selectedValue,
      hint: Text(
        'Selecciona una unidad',
        style: 
        TextStyle(fontSize: 12),
        ),
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