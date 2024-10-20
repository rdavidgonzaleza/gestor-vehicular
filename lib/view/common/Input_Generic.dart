import 'package:flutter/material.dart';

class InputGeneric extends StatelessWidget {
  const InputGeneric(
    {
      super.key,
      this.hintText,
      this.controller,
    });
  final String? hintText;
  final String? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hintText ?? "Usuario"), 
      controller: TextEditingController.fromValue(TextEditingValue())
    );
  }
} 