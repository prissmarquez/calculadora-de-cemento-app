import 'package:cement_app/components/mydropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
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

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/cilindro.png"),
                      ),
                    ),
                  ),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/cono.png"),
                      ),
                    ),
                  ),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/invertir.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25
            ),

            Text("Ancho"),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly, // Allow only digits
                      ],
                  
                      decoration: InputDecoration(
                        labelText: "0",
                        ),
                    ),
                  ),
                   //para eligir la unidadd
                  Mydropdownbutton()
                ],
              ),
            ),

            Text("Largo"),

            Container(
              child: Row(
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
                              
                      decoration: InputDecoration(labelText: "0"),
                    ),
                  ),

                   //para eligir la unidadd
                  Mydropdownbutton()
                ],
              ),
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

                      decoration: InputDecoration(labelText: "0"),
                    ),
                  ),
                  //para eligir la unidadd
                  Mydropdownbutton()
                ],
              ),
            ),



            SizedBox(height: 25),

            ElevatedButton(onPressed: () {}, child: Text("Siguiente")),
          ],
        ),
      ),
    );
  }
}
