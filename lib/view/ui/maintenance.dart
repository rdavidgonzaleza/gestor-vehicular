import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';

class Maintenance extends StatelessWidget {
  const Maintenance({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TitleTextDefault(
              text: "Historial de mantenimiento",
            ),
            Row(
              children: [
                SizedBox(width: size.width/3,child: TitleTextDefault(text: "Fecha",),),
                SizedBox(width: size.width/3,child: TitleTextDefault(text: "Tipo",),),
                SizedBox(width: size.width/3,child: TitleTextDefault(text: "Descripcion",),),
              ],
            ),
            ButtonGeneric(
              onPressed: ()=> Navigator.pushNamed(context, "/homePage"),
              text: "Salir", color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}