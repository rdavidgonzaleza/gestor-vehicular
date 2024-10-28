import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/Input_Generic.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';

class VehicleRegister extends StatelessWidget {
  const VehicleRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: const TitleTextDefault(text: "\nRegistrar Vehiculo"),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputGeneric(),
            InputGeneric(hintText: "Modelo",),
          ],
        ),
        const Row(
          children: [
            InputGeneric(hintText: "Placa",),
            InputGeneric(hintText: "Tipo de vehículo",)
          ],
        ),
        const InputGeneric(hintText: "Número de serie",),
        ButtonGeneric(
          onPressed: ()=> Navigator.pushNamed(context, "/homePage"),
          text: "Registrar",
        ),
        ButtonGeneric(
          onPressed: ()=> Navigator.pushNamed(context, "/homePage"),
          text: "Salir", color: Colors.grey,)
        ],
      )
    );
  }
}

