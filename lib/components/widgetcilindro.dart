import 'dart:math';

import 'package:cement_app/components/specialddownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widgetcilindro extends StatefulWidget {
  //con esto vamos a mandar la informacion a mainPage
  final Function(double) onVolumenChange;
  const Widgetcilindro({
    super.key,
    required this.onVolumenChange, 
    });

  @override
  State<Widgetcilindro> createState() => _WidgetcilindroState();
}

class _WidgetcilindroState extends State<Widgetcilindro> {
  // variables que almacenan los datos
  double radio = 0;
  double angulo = 360; // por defecto el círculo completo
  double profundidad = 0;

  //void no devuleve nada
  // función que calcula el volumen y lo manda a Mainpage
  void calcularVolumen() {
    double volumen = pi * pow(radio, 2) * profundidad * (angulo / 360);
    widget.onVolumenChange(volumen);
  }
  String? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              height: 50,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                onChanged: (value) {
  setState(() {
    radio = double.tryParse(value) ?? 0;
    calcularVolumen();
  });
},
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Radio",
                ),
              ),
            ),
            Specialddownbutton(),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              height: 50,
              child: TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                onChanged: (value) {
  setState(() {
    angulo = double.tryParse(value) ?? 0;
    calcularVolumen();
  });
},
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Angulo",
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Text("°"),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              height: 50,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.number,
                onChanged: (value) {
  setState(() {
    profundidad = double.tryParse(value) ?? 0;
    calcularVolumen();
  });
},
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Profundidad",
                ),
              ),
            ),
            Specialddownbutton(),
          ],
        ),
      ],
    );
  }
}
