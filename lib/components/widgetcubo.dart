import 'package:cement_app/components/specialddownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widgetcubo extends StatefulWidget {
  //con esto vamos a mandar la informacion a mainPage
  final Function(double) onVolumenChange;

  const Widgetcubo({
    super.key, 
    required this.onVolumenChange, 
    });

  @override
  State<Widgetcubo> createState() => _WidgetcuboState();
}

class _WidgetcuboState extends State<Widgetcubo> {
  //todo inicia en cero
  double ancho = 0;
  double largo = 0;
  double profundidad = 0;

  //void no devuleve nada
  void calcularVolumen() {
    double volumen = ancho * largo * profundidad;
    widget.onVolumenChange(volumen); // se manda al Mainpage
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
              //----Ancho------//
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.number,
                //esto se ejecuta cuando el usuario escribe algo
                onChanged: (value) {
                  //convierte el texto en un numero
                  ancho = double.tryParse(value) ?? 0;
                  calcularVolumen();
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Ancho",
                ),
              ),
            ),
            //para eligir la unidadd
            Specialddownbutton(),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              height: 50,
              //------Largo------//
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  largo = double.tryParse(value) ?? 0;
                  calcularVolumen();
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Largo",
                ),
              ),
            ),

            //para eligir la unidadd
            Specialddownbutton(),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //es el textField
            SizedBox(
              width: 80,
              height: 50,
              //------Profundidad-----//
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  largo = double.tryParse(value) ?? 0;
                  calcularVolumen();
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
            //para eligir la unidadd
            Specialddownbutton(),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
