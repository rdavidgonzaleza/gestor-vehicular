import 'package:flutter/material.dart';

class InputGeneric extends StatelessWidget {
  const InputGeneric(
    {
      super.key,
      this.hintText,
      this.controller,
      this.margin,
    });
  final String? hintText;
  final String? controller;
  final double? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin ?? 15.0),
      child: TextField(
        decoration: InputDecoration(hintText: hintText ?? "Usuario", ), 
        controller: TextEditingController.fromValue(TextEditingValue())
      ),
    );
  }
} 