import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import '../common/BackgroundDefault.dart';
import '../common/Input_Generic.dart';
import '../../model/propietario.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    late Propietario propietario = Propietario("identificacion", "tipoDocumento", "primerNombre", "primerApellido", "segundoNombre", "segundoApellido", "licenciaNumero", "password", "email", "telefono");

    return Scaffold(
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
              InputGeneric(hintText: "Usuario",maxHeight: size.height, maxWidth: size.width, controller: userController,),
              InputGeneric(hintText: "Contraseña",maxHeight: size.height, maxWidth: size.width, controller: passwordController,),
              Center(
                child: ButtonGeneric(
                  onPressed: (){
                    if(propietario.iniciarSesion(userController.text, passwordController.text)){
                      Navigator.pushNamed(context, "/homePage");
                    }
                    else{
                      
                    }
                  },
                ),
              ),
              Center(child: Column(
                children: [
                  const TitleTextDefault(text: "¿No tienes cuenta?",),
                  InkWell(
                    onTap: ()=> Navigator.pushNamed(context, "/registerPage"),
                    child: const TitleTextDefault(text: "Registrate", decoration: TextDecoration.underline,size: 15.0,)),
                ],
              )),
            ],
          ),
        ),
      ),
    );
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
      decoration: decoration ?? TextDecoration.none, fontSize: size ?? 20.0, ),  
    );
  }
}