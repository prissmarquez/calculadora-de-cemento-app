import 'package:cement_app/components/specialddownbutton.dart';
import 'package:cement_app/components/myselectableimage.dart';
import 'package:cement_app/pages/typePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mainpage1 extends StatefulWidget {
  const Mainpage1({super.key});

  @override
  State<Mainpage1> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage1> {
  String? selectedImage;

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

            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Container(
            //         width: 50,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage("lib/images/cilindro.png"),
            //           ),
            //         ),
            //       ),

            //       Container(
            //         width: 50,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage("lib/images/cono.png"),
            //           ),
            //         ),
            //       ),

            //       Container(
            //         width: 50,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           image: DecorationImage(
            //             image: AssetImage("lib/images/invertir.png"),
            //           ),
            //         ),
            //       ),
            //     ]-,
            //   ),
            // ),

            Container(
              child: Column(
                children: [
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Myselectableimage(
                  imagePath: "lib/images/cilindro.png",
                  //Tú pasas valores al widget MySelectableImage
                  isSelected: selectedImage == "lib/images/cilindro.png",
                  //es la función que se ejecuta cuando el usuario toca la imagen.
                  //En este caso, cambia la variable selectedImage
                  onTap: () {
                    setState(() {
                      selectedImage = "lib/images/cilindro.png";
                    });
                  },
                ),
            
                Myselectableimage(
                  imagePath: "lib/images/cono.png",
                  isSelected: selectedImage == "lib/images/cono.png",
                  onTap: () {
                    setState(() {
                      selectedImage = "lib/images/cono.png";
                    });
                  },
                ),
            
                Myselectableimage(
                  imagePath: "lib/images/invertir.png",
                  isSelected: selectedImage == "lib/images/invertir.png",
                  onTap: () {
                    setState(() {
                      selectedImage = "lib/images/invertir.png";
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

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
                ],
              ),
            ),
            

            SizedBox(height: 12),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ), // reduce espacio interno
                minimumSize: Size(50, 30), // tamaño mínimo del botón
              ),
              onPressed: () {},
              child: Text("Añade otra forma"),
            ),

            SizedBox(
              height: 12,
            ),

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
      )
    );
  }
}
