import 'package:flutter/material.dart';
import 'package:cement_app/components/myselectableimage.dart';

class Selectableforma extends StatefulWidget {
  final Function(String) onFormaSelected; // callback hacia Mainpage1

  const Selectableforma({super.key, required this.onFormaSelected});

  @override
  State<Selectableforma> createState() => _SelectableformaState();
}

class _SelectableformaState extends State<Selectableforma> {
  String? selectedForma;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Myselectableimage(
          imagePath: "lib/images/cilindro.png",
          isSelected: selectedForma == "cilindro",
          onTap: () {
            setState(() {
              selectedForma = "cilindro";
            });
            widget.onFormaSelected("cilindro");
          },
        ),
        Myselectableimage(
          imagePath: "lib/images/invertir.png",
          isSelected: selectedForma == "cubo",
          onTap: () {
            setState(() {
              selectedForma = "cubo";
            });
            widget.onFormaSelected("cubo");
          },
        ),
        Myselectableimage(
          imagePath: "lib/images/cono.png",
          isSelected: selectedForma == "cono",
          onTap: () {
            setState(() {
              selectedForma = "cono";
            });
            widget.onFormaSelected("cono");
          },
        ),
      ],
    );
  }
}
