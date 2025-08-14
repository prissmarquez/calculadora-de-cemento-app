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
            Text("Calcule el Volumen", style: TextStyle(fontSize: 15)),

            SizedBox(height: 25),

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
                        image: AssetImage("lib/images/cubo.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Text("Ancho"),

            SizedBox(
              width: 100,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],

                decoration: InputDecoration(labelText: "0"),
              ),
            ),

            Text("Largo"),

            Container(
              child: Row(
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

                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  )
                ],
              ),
            ),

            Text("Profundidad"),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
              width: 100,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly, // Allow only digits
                ],

                decoration: InputDecoration(labelText: "0"),
              ),
            ),

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
