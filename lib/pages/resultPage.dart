import 'package:cement_app/pages/mainPage.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatefulWidget {
  final List<Forma> formas;
  final String? elementos;
  final String? servicio;
  final String? resistencia;
  final String? fraguado;
  final String? revenimiento;

  const Resultpage({
    super.key,
    required this.formas,
    this.elementos,
    this.servicio,
    this.resistencia,
    this.fraguado,
    this.revenimiento,
  });

  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
          child: Center(
            child: Column(
              children: [
                Text("Resultado de Calculo"),

                SizedBox(height: 20),

                Text("Elemento: ${widget.elementos ?? "-"}"),
                Text("Servicio: ${widget.servicio ?? "-"}"),
                Text("Resistencia: ${widget.resistencia ?? "-"}"),
                Text("Fraguado: ${widget.fraguado ?? "-"}"),
                Text("Revenimiento: ${widget.revenimiento ?? "-"}"),
                SizedBox(height: 20),

                // Mostrar cada forma y su volumen
                ...widget.formas.map((forma) {
                  String descripcion = "";
                  switch (forma.tipo) {
                    case "cilindro":
                      descripcion =
                          "Cilindro: Volumen = ${forma.volumen.toStringAsFixed(2)} m³";
                      break;
                    case "cubo":
                      descripcion =
                          "Cubo/Rectángulo: Volumen = ${forma.volumen.toStringAsFixed(2)} m³";
                      break;
                    case "cono":
                      descripcion =
                          "Triángulo/Cono: Volumen = ${forma.volumen.toStringAsFixed(2)} m³";
                      break;
                    case "volumen":
                      descripcion =
                          "Volumen ingresado manualmente: ${forma.volumen.toStringAsFixed(2)} m³";
                      break;
                    default:
                      descripcion =
                          "${forma.tipo}: Volumen = ${forma.volumen.toStringAsFixed(2)} m³";
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Text(descripcion, style: TextStyle(fontSize: 18)),
                  );
                }).toList(),

                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Atras"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
