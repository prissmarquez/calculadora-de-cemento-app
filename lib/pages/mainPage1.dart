import 'package:cement_app/components/widgetRectanguloTrinagulo.dart';
import 'package:cement_app/components/widgetVolumen.dart';
import 'package:cement_app/components/widgetcilindro.dart';
import 'package:cement_app/components/widgetcubo.dart';
import 'package:cement_app/pages/typePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mainpage1 extends StatefulWidget {
  const Mainpage1({super.key});

  @override
  State<Mainpage1> createState() => _MainpageState();
}

class Forma {
  final String tipo; // "cilindro", "cubo", etc.
  Forma(this.tipo);
}

class _MainpageState extends State<Mainpage1> {
  List<Forma> formas = [];

  String? selectedImage;

  Widget buildWidget(Forma forma) {
    switch (forma.tipo) {
      case "cilindro":
        return Widgetcilindro();
      case "cono":
        return Widgetrectangulotrinagulo();
      case "cubo":
        return Widgetcubo();
      default:
        return Widgetvolumen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text(
                "Calculadora de\n  Concreto",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 10, 19, 106),
                ),
              ),

              SizedBox(height: 30),

              Container(
                child: buildWidget(
                  Forma(
                    selectedImage ?? "volumen"
                    )
                  )
                ),

              SizedBox(height: 12),

              Column(
                children: formas.map((f) => buildWidget(f)).toList()),

              SizedBox(height: 12),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ), // reduce espacio interno
                  minimumSize: Size(50, 30), // tamaño mínimo del botón
                ),
                onPressed: () {
                  setState(() {
                    formas.add(Forma(selectedImage ?? "volumen")); // default
                  });
                },
                child: Text("Añade otra forma"),
              ),

              ElevatedButton(
                onPressed: formas.isNotEmpty
                    ? () {
                        setState(() {
                          formas.removeLast();
                        });
                      }
                    : null,
                child: Text("Eliminar la forma"),
              ),
              
              SizedBox(height: 12),

              Text("Volumen en metros cúbicos (m³): "),

              SizedBox(
                width: 170,
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "m³"),
                ),
              ),

              Text("Porcentaje de reserva en (m³): "),

              SizedBox(
                width: 170,
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "m³"),
                ),
              ),
              SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Typepage()),
                  );
                },
                child: Text("Siguiente"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
