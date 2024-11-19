import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/Input_Generic.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';
import '../common/background_default.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDefault(
        child: Column(
          children: [
            const TitleTextDefault(text: "\n\nRegistro",size: 20.0,),
            const InputGeneric(hintText: "Correo",),
            const InputGeneric(hintText: "Contraseña",),
            const InputGeneric(hintText: "Nombre",),
            const InputGeneric(hintText: "Apellidos",),
            const InputGeneric(hintText: "Identificacion",),
            const InputGeneric(hintText: "Celular",),
            ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/loginPage"),
              text: "Registrar Usuario",),
            ButtonGeneric(
              onPressed: ()=> Navigator.pushNamed(context, "/vehicleRegister"),
              color: Colors.grey, text: "Registrar Vehículo", ),
            ButtonGeneric(
              onPressed: ()=> Navigator.pushNamed(context, "/homePage"),
              text: "Salir",)
          ],
        )
      )
    );
  }
}