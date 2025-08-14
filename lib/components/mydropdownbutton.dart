import 'package:flutter/material.dart';

const List<String> list = <String>['metros', 'centimetros', 'pulgadas'];

class Mydropdownbutton extends StatefulWidget {
  const Mydropdownbutton({super.key});

  @override
  State<Mydropdownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Mydropdownbutton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return  DropdownButton<String>(
      value: selectedValue,
      hint: const Text('Selecciona una unidad'),
      items: list.map<DropdownMenuItem<String>>((String value) {
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