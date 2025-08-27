import 'package:flutter/material.dart';

class Mydropdownbutton1 <T>  extends StatefulWidget {
  final List<T> items;
  final T? selectedValue;
  final ValueChanged<T?>? onChanged;
  final String Function(T)? itemLabelBuilder;
  final String? hinText;

  const Mydropdownbutton1  ({
    Key? key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    required this.itemLabelBuilder,
    required this.hinText
    }) : super(key: key);

  @override
  State<Mydropdownbutton1 <T> > createState() => _Mydropdownbutton1 <T> (
    
  );
}

class _Mydropdownbutton1 <T> extends State<Mydropdownbutton1 <T> > {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}