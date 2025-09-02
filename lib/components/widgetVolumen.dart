import 'package:cement_app/components/specialddownbutton.dart';
import 'package:cement_app/components/myselectableimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Widgetvolumen extends StatefulWidget {
  const Widgetvolumen({super.key});

  @override
  State<Widgetvolumen> createState() => _WidgetvolumenState();
}

class _WidgetvolumenState extends State<Widgetvolumen> {
  String? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Myselectableimage(
                          imagePath: "lib/images/cilindro.png",
                          //Tú pasas valores al widget MySelectableImage
                          isSelected:
                              selectedImage == "lib/images/cilindro.png",
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
                          isSelected:
                              selectedImage == "lib/images/invertir.png",
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
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              );
  }
}

