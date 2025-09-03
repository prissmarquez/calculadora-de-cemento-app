import 'package:cement_app/components/specialddownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widgetcilindro extends StatefulWidget {
  const Widgetcilindro({super.key});

  @override
  State<Widgetcilindro> createState() => _WidgetcilindroState();
}

class _WidgetcilindroState extends State<Widgetcilindro> {
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
                textAlignVertical: TextAlignVertical.center,
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
