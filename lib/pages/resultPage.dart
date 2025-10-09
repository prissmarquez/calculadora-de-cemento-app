import 'package:cement_app/pages/mainPage.dart';
import 'package:flutter/material.dart';

class Resultpage extends StatefulWidget {
  final List<Forma> formas;
  final String? elementos;
  final String? servicio;
  final String? resistencia;
  final String? fraguado;
  final String? revenimiento;
  final double porcentajeReserva;

  const Resultpage({
    super.key,
    required this.formas,
    this.elementos,
    this.servicio,
    this.resistencia,
    this.fraguado,
    this.revenimiento,
    required this.porcentajeReserva,
  });

  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  
  @override
  Widget build(BuildContext context) {
    //  Calculamos los totales aquí
  double totalVolumen = widget.formas.fold(
      0, (previousValue, forma) => previousValue + forma.volumen);

  // Aplicamos porcentaje de reserva
  double volumenConReserva = totalVolumen * (1 + widget.porcentajeReserva / 100);
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

                Text("Volumen total: ${totalVolumen.toStringAsFixed(2)} m³"),
Text("Volumen con reserva: ${volumenConReserva.toStringAsFixed(2)} m³"),

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
