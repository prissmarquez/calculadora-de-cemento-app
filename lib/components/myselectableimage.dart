import 'package:flutter/material.dart';

class Myselectableimage extends StatelessWidget {
  final String imagePath;
    final bool isSelected;
    final VoidCallback onTap;
    // como un botón invisible detrás de la imagen. Cuando lo tocas, ejecuta la acción que le digamos

  const Myselectableimage({
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: isSelected? Colors.blue : Colors.transparent
        ),
        
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover
          )
          ),
          
          
      )
    );
  }
}