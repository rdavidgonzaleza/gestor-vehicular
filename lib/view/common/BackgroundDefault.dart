import 'package:flutter/material.dart';

class BackgroundDefault extends StatelessWidget { //Fondo por defecto de la app
  const BackgroundDefault({
    super.key,
    required this.child
    });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 10,
          top: 10,
          child: Image.asset("icon.png", width: 100.0, height: 100.0)

        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: child,  
          ),
        )
      ],
    );
  }
}