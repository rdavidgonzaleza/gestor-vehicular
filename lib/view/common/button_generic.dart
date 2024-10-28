import 'package:flutter/material.dart';

class ButtonGeneric extends StatelessWidget {
  const ButtonGeneric({
    super.key,
    this.text,
    this.color, 
    required this.onPressed,
    this.alignment,
    });
  final String? text;
  final Color? color;
  final Function() onPressed;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color ?? Color.fromARGB(255, 43, 168, 226),
        ),
        child: Text(
          text ?? "Iniciar Sesión",
          style: const TextStyle(color: Colors.white),
        ),
      )
    );
  }
}