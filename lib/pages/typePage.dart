
import 'package:cement_app/components/myDropDownButton.dart';
import 'package:flutter/material.dart';

class Typepage extends StatefulWidget {
  
  const Typepage({super.key});

  @override
  State<Typepage> createState() => _TypepageState();
}

class _TypepageState extends State<Typepage> {
  final List <String> elementos = [
    "Cimentación", "Piso", "Banqueta", "Muro", "Cisterna", "Pavimento", "Losa", "Talud" , "Zapata", "Columna", "Otro"
    ];
    final List <String> servicio = [
    "Tiro directo" , "Bomba"
    ];
    final List <String> resistencia = [
    "150 kg/cm2", "200 kg/cm2", "250 kg/cm2", "300 kg/cm2", "350 kg/cm2"
    ];
     final List <String> fraguado =[
    "3 dias", "7 dias", "14 dias", "28 dias"
    ];
     final List <String> revenimiento =[
    "10 cm", "12 cm", "4 cm", "28 cm", "28 cm"
    ];
  String? elementoSelecionado;
  String? servicioSelecionado;
  String? resistenciaSelecionado;
  String? fraguadoSelecionado;
  String? revenimientoSelecionado;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsetsGeometry.all(30)),
              Text("Elemento de Construcción: "),
              Mydropdownbutton<String>(
                hinText: "Selecione un Elemento",
                items: elementos, 
                selectedValue: elementoSelecionado, 
                onChanged: (nuevoElemento) {
                  setState(() {
                    elementoSelecionado = nuevoElemento;
                  });
                }, 
                itemLabelBuilder: (elementos) => elementos, 
                ),

                Text("Tipo de Servicio: "),
              Mydropdownbutton<String>(
                hinText: "Selecione un Elemento",
                items: servicio, 
                selectedValue: servicioSelecionado, 
                onChanged: (nuevoServicio) {
                  setState(() {
                    servicioSelecionado = nuevoServicio;
                  });
                }, 
                itemLabelBuilder: (servicio) => servicio, 
                ),


                Text("Resistencia a la compresión (fc): "),
              Mydropdownbutton<String>(
                hinText: "Selecione un Elemento",
                items: resistencia, 
                selectedValue: resistenciaSelecionado, 
                onChanged: (nuevaResistencia) {
                  setState(() {
                    resistenciaSelecionado = nuevaResistencia;
                  });
                }, 
                itemLabelBuilder: (resistencia) => resistencia, 
                ),

                Text("Tiempo de fraguado: "),
              Mydropdownbutton<String>(
                hinText: "Selecione un Elemento",
                items: fraguado, 
                selectedValue: fraguadoSelecionado, 
                onChanged: (nuevaFraguado) {
                  setState(() {
                    fraguadoSelecionado = nuevaFraguado;
                  });
                }, 
                itemLabelBuilder: (fraguado) => fraguado, 
                ),

                Text("Revenimiento en Centímetros (cm): "),
              Mydropdownbutton<String>(
                hinText: "Selecione un Elemento",
                items: revenimiento, 
                selectedValue: revenimientoSelecionado, 
                onChanged: (nuevoRevenimiento) {
                  setState(() {
                    revenimientoSelecionado = nuevoRevenimiento;
                  });
                }, 
                itemLabelBuilder: (revenimiento) => revenimiento, 
                )
            ],
          ),
        ) ,
        )
    );
  }
}