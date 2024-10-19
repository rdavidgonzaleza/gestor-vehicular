import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: BackgroundDefault()
      )
    );
  }
}

class TitleTextDefault extends StatelessWidget { //widget para texto de titulo por default
  const TitleTextDefault({
    super.key,
    this.color,
    this.size,
    this.text
    });
  final String? text;
  final Color? color;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Text("Iniciar Sesión");
  }
}

class BackgroundDefault extends StatelessWidget { //Fondo por defecto de la app
  const BackgroundDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("logo.jpg"),
      
    );
  }
}