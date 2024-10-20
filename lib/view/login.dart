import 'package:flutter/material.dart';
import 'common/BackgroundDefault.dart';
import 'common/Input_Generic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(233, 240, 242, 1),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: const BackgroundDefault(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: TitleTextDefault()),
                InputGeneric(),
                InputGeneric(hintText: "Contraseña",),
                TitleTextDefault(text: "Iniciar Sesión",)
              ],
            ),
          ),
        ),
      )
    );
  }
}

class ButtonGeneric extends StatelessWidget {
  const ButtonGeneric({
    super.key,
    this.text,
    required this.child,
    });
    final Widget? text;
    final Widget child;
  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: (){
      InputGeneric()
    }, child: child);
  }
}

class TitleTextDefault extends StatelessWidget { //widget para texto de titulo por default
  const TitleTextDefault({
    super.key,
    this.color,
    this.size,
    this.text,
    });
  final String? text;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Inicie Sesión", 
      style: TextStyle(color: Colors.black, 
      decoration: TextDecoration.none, fontSize: size ?? 20.0),
      
      );
  }
}

