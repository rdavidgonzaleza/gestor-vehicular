import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/Input_Generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';
import '../common/BackgroundDefault.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDefault(
        child: Column(
          children: [
            const TitleTextDefault(text: "Registro",size: 20.0,),
            const InputGeneric(hintText: "Correo",),
            const InputGeneric(hintText: "Contraseña",),
            const InputGeneric(hintText: "Nombre",),
            const InputGeneric(hintText: "Apellidos",),
            const InputGeneric(hintText: "Identificacion",),
            const InputGeneric(hintText: "Celular",),
            Row(
              children: [
                ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/loginPage"),
                  child: const TitleTextDefault(text: "Registrar Usuario",)),
                ButtonGeneric(
                  onPressed: ()=> Navigator.pushNamed(context, "/vehicleRegister"),
                  color: Colors.grey, child: const TitleTextDefault(text: "Registrar Vehículo",), ),
              ],
            ),
            ButtonGeneric(
              onPressed: ()=> Navigator.pop(context),
              child: const TitleTextDefault(text: "Salir",))
          ],
        )
      )
    );
  }
}