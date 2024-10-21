import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/Input_Generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';

class VehicleRegister extends StatelessWidget {
  const VehicleRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TitleTextDefault(text: "Registar Vehiculo"),
        const Row(
          children: [
          InputGeneric(hintText: "Marca",),
          InputGeneric(hintText: "Modelo",)
        ],),
        const Row(
          children: [
            InputGeneric(hintText: "Placa",),
            InputGeneric(hintText: "Tipo de vehículo",)
          ],
        ),
        const InputGeneric(hintText: "Número de serie",),
        Row(
          children: [
            ButtonGeneric(
              onPressed: ()=> Navigator.pushNamed(context, "/loginPage"),
              child: const TitleTextDefault(text: "Registrar",)),
            ButtonGeneric(
              onPressed: ()=> Navigator.pop(context),
              child: const TitleTextDefault(text: "Salir",))
          ],
        )
        ],
      )
    );
  }
}