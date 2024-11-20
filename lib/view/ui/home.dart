import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleTextDefault(text: "Mis Vehiculos"),
            InkWell(
              child: TitleTextDefault(text: "+ Añadir nuevo vehículo", decoration: TextDecoration.underline,), 
              onTap: () => Navigator.pushNamed(context, "/vehicleRegister"),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 200.0, minWidth: 25.0),
              child: Column(
                children: [
                  TitleTextDefault(text: "Vehículo 1: Ford Focus 2020",),
                  TitleTextDefault(text: "Placa: ABC123",),
                ],
              ),
            ),
            ButtonGeneric(text: "Ver detalles", onPressed: 
              ()=> Navigator.pushNamed(context, "/maintenance2")
            ),
            ButtonGeneric(text: "Eventos", onPressed: 
              ()=> Navigator.pushNamed(context, "/eventRegister")
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 200.0, minWidth: 25.0),
              child: Column(
                children: [
                  TitleTextDefault(text: "Vehículo 2: Chevrolet Joy 2023",),/*cambiar de texto a informacion que este almacenada en la bd*/
                  TitleTextDefault(text: "Placa: BDA321",),
                ],
              ),
            ),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/maintenance"), text: "Ver detaller",),
              SizedBox(width: 3),
              ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/eventRegister"), text: "Eventos",),
          ]
            ),

            /*ButtonGeneric(text: "Ver detalles", onPressed: 
              ()=> Navigator.pushNamed(context, "/maintenance")
            ),

            ButtonGeneric(text: "Eventos", onPressed: 
              ()=> Navigator.pushNamed(context, "/eventRegister")
            ),  */ 

            Text("\n\n"),

            ButtonGeneric(text: "Salir", onPressed: 
              ()=> Navigator.pushNamed(context, "/loginPage")
            ),
          ],
        ),
      )
    );
  }
}