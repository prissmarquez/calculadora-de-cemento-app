import 'package:cement_app/components/specialddownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widgetcubo extends StatefulWidget {
  const Widgetcubo({super.key});

  @override
  State<Widgetcubo> createState() => _WidgetcuboState();
}

class _WidgetcuboState extends State<Widgetcubo> {
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
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Allow only digits
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
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter
                      .digitsOnly, // Allow only digits
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
              child: TextField(
                keyboardType: TextInputType.number,
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