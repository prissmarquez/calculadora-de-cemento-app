import 'package:cement_app/components/selectableForma.dart';
import 'package:cement_app/components/widgetRectanguloTrinagulo.dart';
import 'package:cement_app/components/widgetcilindro.dart';
import 'package:cement_app/components/widgetcubo.dart';
import 'package:cement_app/pages/typePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

// Clase para manejar tipo de forma
class Forma {
  double volumen;
  String tipo;
  Forma(this.tipo, {this.volumen = 0});
}

class _MainpageState extends State<Mainpage> {
  List<Forma> formas = [];
  String? selectedImage;

  // Método que decide qué widget mostrar
  Widget buildWidget(Forma forma) {
    switch (forma.tipo) {
      case "cilindro":
        return Widgetcilindro(
          onVolumenChange: (volumen) {
            setState(() {
              forma.volumen = volumen; // 🔹 Guardamos el volumen del cubo
            });
          },
        );
      case "cubo":
        return Widgetcubo(
          onVolumenChange: (volumen) {
            setState(() {
              forma.volumen = volumen; // 🔹 Guardamos el volumen del cubo
            });
          },
        );
      case "cono":
        return Widgetrectangulotrinagulo(
          onVolumenChange: (volumen) {
            setState(() {
              forma.volumen = volumen; // 🔹 Guardamos el volumen del cubo
            });
          },
        );
      case "volumen":
      default:
        return SizedBox();
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

              //fila de formas
Selectableforma(
  onFormaSelected: (tipo) {
    setState(() {
      selectedImage = tipo;
      if (formas.isEmpty) {
        formas.add(Forma(tipo));   // si no hay ninguna, la crea
      } else {
        formas[0].tipo = tipo;     // si ya hay, reemplaza la primera
      }
    });
  },
),

              //sizedBoz entre fila de formas y el container de las medidas
              SizedBox(height: 10),

              if (selectedImage != null) ...[
  if (formas.isEmpty)
    // 👉 Creamos la primera forma real
    buildWidget(Forma(selectedImage!))
  else
    // 👉 Usamos la que ya está guardada
    buildWidget(formas.first),
],

              //sized box entre container de formas y los botones
              // SizedBox(height: 10),
              Column(
                children: formas.asMap().entries.map((entry) {
                  int index = entry.key;
                  Forma f = entry.value;
                  return Column(
                    children: [
                      //espacio entre una forma y otra
                      SizedBox(height: 30),
                      //fila de formas
                      Selectableforma(
                        onFormaSelected: (tipo) {
                          setState(() {
                            formas[index].tipo = tipo;
                          });
                        },
                      ),
                      SizedBox(height: 2),
                      //container con unidades
                      buildWidget(f), // Widgetvolumen o cualquier otro
                    ],
                  );
                }).toList(),
              ),

              SizedBox(height: 12),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    formas.add(Forma(selectedImage!));
                  });
                },
                child: Text("Añade otra forma"),
              ),
              SizedBox(height: 12),

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

              //Mainpage cuando vas a Typepage, debes pasar la lista de formas
              ElevatedButton(
                onPressed: formas.isNotEmpty
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Typepage(formas: formas),
                          ),
                        );
                      }
                    : null,
                child: Text("Siguiente"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
