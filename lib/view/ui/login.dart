import 'package:flutter/material.dart';
import '../common/BackgroundDefault.dart';
import '../common/Input_Generic.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: BackgroundDefault(
            child: Column(
              mainAxisSize: MainAxisSize.min, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(child: TitleTextDefault()),
                const InputGeneric(),
                const InputGeneric(hintText: "Contraseña",margin: 25.0,),
                Center(
                  child: ButtonGeneric(
                    onPressed: ()=> Navigator.pushNamed(context, "/vehicleRegister"),
                    child: const TitleTextDefault(text: "Iniciar Sesión"),
                  ),
                ),
                Center(child: Column(
                  children: [
                    const TitleTextDefault(text: "\n\n\n\n\n¿No tienes cuenta?",),
                    InkWell(
                      onTap: ()=> Navigator.pushNamed(context, "/registerPage"),
                      child: const TitleTextDefault(text: "Registrate", decoration: TextDecoration.underline,size: 15.0,)),
                  ],
                )),
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
    this.color, 
    required this.onPressed,
    });
  final Widget? text;
  final Widget child;
  final Color? color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressed(),
    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(color ?? const Color.fromARGB(255, 43, 168, 226))),
    child: child);
  }
}

class TitleTextDefault extends StatelessWidget { //widget para texto de titulo por default
  const TitleTextDefault({
    super.key,
    this.color,
    this.size,
    this.text,
    this.decoration,
    });
  final String? text;
  final Color? color;
  final double? size;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "Inicie Sesión", 
      style: TextStyle(color: Colors.black, 
      decoration: decoration ?? TextDecoration.none, fontSize: size ?? 20.0),  
    );
  }
}