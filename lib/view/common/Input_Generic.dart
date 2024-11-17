import 'package:flutter/material.dart';

class InputGeneric extends StatelessWidget {
  const InputGeneric({
    super.key,
    this.hintText,
    this.controller, 
    this.maxWidth, 
    this.maxHeight,
  });
  final String? hintText;
  final TextEditingController? controller;
  final double? maxWidth;
  final double? maxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth ?? 150.0, maxHeight: maxHeight ?? 25.0),
      margin: EdgeInsets.all(10.0),
      child: TextFormField(decoration: InputDecoration(hintText: hintText ?? "Marca"), controller: controller,),
    );
  }
}