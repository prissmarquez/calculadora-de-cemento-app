// ignore: unused_import
import 'dart:convert';

import 'package:flutter/material.dart';

class Mydropdownbutton<T> extends StatefulWidget {
  //“El tipo lo va a decidir el que use mi widget”, por eso es T"
  // final List<T> items;
  // final T? selectedValue;
  // final ValueChanged<T?>? onChanged;
  // final String Function(T)? itemLabelBuilder;
  // final String? hinText;

  final List<T> items;
  final T? selectedValue;
  final ValueChanged<T?> onChanged;
  final String Function(T) itemLabelBuilder;
  final String hinText;

  const Mydropdownbutton({
    Key? key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    required this.itemLabelBuilder,
    required this.hinText,
  }) : super(key: key);

  @override
  State<Mydropdownbutton<T>> createState() => _Mydropdownbutton<T>();
}

class _Mydropdownbutton<T> extends State<Mydropdownbutton<T>> {
  //Piensa que _internalSelectedValue es como el post-it donde el widget apunta cuál fue la última opción elegida.
  //Al inicio: no hay nada seleccionado → está en null.
  //Cuando eliges un valor: se guarda ahí el valor que seleccionaste.
  T? _internalSelectedValue;

  @override
  //esto se hace antes de que se dibuje la pantalla es el ciclo de Stateful
  void initState() {
    //Estás diciendo: “primero corre lo que el padre necesita hacer, y luego corre lo mío”.
    super.initState();
    //“Cuando nazca este dropdown, empieza con el valor que el usuario me dio como seleccionado”.
    _internalSelectedValue = widget.selectedValue;
  }

  @override
  //cuando padre canbia el valor este actualiza el valor
  void didUpdateWidget(covariant Mydropdownbutton<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedValue != oldWidget.selectedValue) {
      _internalSelectedValue = widget.selectedValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: _internalSelectedValue,

      //El hint es un texto que aparece cuando no hay nada seleccionado.
      //!(bang operator) Le dices al compilador: “confía, esto no es null”.
      // hint: widget.hinText != null ? Text(widget.hinText!) : null,
      // items: widget.items.map((T item) {
      //   return DropdownMenuItem<T>(
      //     value: item,
      //     //?.call(item) es llamada con null-safety: si la función es null, no la llama y devuelve null
      //     child: Text(widget.itemLabelBuilder?.call(item) ?? item.toString()),
      //   );
      // }).toList(),
      // onChanged: (T? newValue) {
      //   setState(() {
      //     _internalSelectedValue = newValue;
      //   });
      //   //Sirve para avisarle al padre cuál fue el nuevo valor, por si necesita reaccionar
      //   //(guardar en su estado, disparar lógica, etc.).
      //   widget.onChanged?.call(newValue);
      // },
      hint: Text(widget.hinText),
      items: widget.items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(widget.itemLabelBuilder(item)),
        );
      }).toList(),
      onChanged: (T? newValue) {
        setState(() {
          _internalSelectedValue = newValue;
        });
        //imagina que el hijo es un botón de ascensor. Cuando alguien lo presiona (newValue), 
        //el botón avisa al sistema central (padre): “me seleccionaron, lleva al piso X”
        widget.onChanged(newValue);
      },
    );
  }
}
