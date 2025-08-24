import 'package:cement_app/components/myradiobutton_resistencia.dart';
import 'package:flutter/material.dart';

class Typepage extends StatelessWidget {
  const Typepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Column(
          children: [
            Container(
              height: 300,
              child: MyradiobuttonResistencia(),
            )
          ],
        ) ,
        )
    );
  }
}