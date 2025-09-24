import 'package:cement_app/components/specialddownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widgetrectangulotrinagulo extends StatefulWidget {
  final Function(double) onVolumenChange;
  
  const Widgetrectangulotrinagulo({
    super.key,
    required this.onVolumenChange, 
    });

  @override
  State<Widgetrectangulotrinagulo> createState() => _WidgetrectangulotrinaguloState();
}

class _WidgetrectangulotrinaguloState extends State<Widgetrectangulotrinagulo> {
  //todo inicia en cero
  double basE = 0;
  double altura = 0;
  double profundidad = 0;

  //void no devuleve nada
  // función que calcula el volumen y lo manda a Mainpage
  void calcularVolumen() {
    double volumen = 1/2 * basE * altura * profundidad;
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
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  //convierte el texto en un numero
                  basE = double.tryParse(value) ?? 0;
                  calcularVolumen();
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Allow only digits
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Base",
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
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  //convierte el texto en un numero
                  altura = double.tryParse(value) ?? 0;
                  calcularVolumen();
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Allow only digits
                ],
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Altura",
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
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  //convierte el texto en un numero
                  profundidad = double.tryParse(value) ?? 0;
                  calcularVolumen();
                },
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Allow only digits
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
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}