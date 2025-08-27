import 'package:cement_app/components/specialddownbutton.dart';
import 'package:cement_app/components/myselectableimage.dart';
import 'package:cement_app/pages/typePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  String? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              "Calculadora de\n  Concreto", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 10, 19, 106)
                )),

            SizedBox(height: 40),

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  Myselectableimage(
              imagePath: "lib/images/cilindro.png", 
              //Tú pasas valores al widget MySelectableImage
              isSelected: selectedImage == "lib/images/cilindro.png",
              //es la función que se ejecuta cuando el usuario toca la imagen. 
              //En este caso, cambia la variable selectedImage
              onTap: (){
                setState(() {
                  selectedImage = "lib/images/cilindro.png";
                });
              },
               ),

            Myselectableimage(
              imagePath: "lib/images/cono.png", 
              isSelected: selectedImage == "lib/images/cono.png",
              onTap: (){
                setState(() {
                  selectedImage = "lib/images/cono.png";
                });
              }),
            
            Myselectableimage(
              imagePath: "lib/images/invertir.png", 
              isSelected: selectedImage == "lib/images/invertir.png",
              onTap: (){
                setState(() {
                  selectedImage = "lib/images/invertir.png";
                });
              }),
                ],
              ),
            ),
            

            SizedBox(
              width: 30,
            ),

            

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Ancho"),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly, // Allow only digits
                      ],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "0"
                        ),
                    ),
                  ),
                   //para eligir la unidadd
                  Specialddownbutton()
                ],
              ),
            ),

            Text("Largo"),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                   width: 100,
                   height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter
                          .digitsOnly, // Allow only digits
                    ],
                     textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "0"
                      ),
                  ),
                ),
            
                 //para eligir la unidadd
                Specialddownbutton()
              ],
            ),

            Text("Profundidad"),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //es el textField
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter
                            .digitsOnly, // Allow only digits
                      ],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "0"
                        ),
                    ),
                  ),
                  //para eligir la unidadd
                  Specialddownbutton()
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),

            Text("Volumen en metros cúbicos (m³): "),

            Container(
              
              width: 170,
              child: TextField(
                keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter
                            .digitsOnly, // Allow only digits
                      ],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "m³"
                        ),
              ),
            ),

            Text("Porcentaje de reserva en (m³): "),

            Container(
              
              width: 170,
              child: TextField(
                keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter
                            .digitsOnly, // Allow only digits
                      ],
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "m³"
                        ),
              ),
            ),
            SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Typepage())
                  );
              }, 
              child: Text("Siguiente")
              ),
          ],
        ),
      ),
    );
  }
}
