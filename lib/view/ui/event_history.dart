import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';

class EventHistory extends StatelessWidget {
  const EventHistory({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TitleTextDefault(text: "\n\nHistorial de Eventos",),
            TitleTextDefault(text: "\nTipo de evento: " //aqui va la wea variable
            ,),
            TitleTextDefault(text: "\nFecha: "//aqui va la wea variable de fecha
            ,),
            TitleTextDefault(text: "\nDescripcion: "//wea variable de desc
            ,),
            TitleTextDefault(text: "\nDocumentos relacionados: "//wea variable de docs
            ,),
          
            /*InkWell(
              onTap: () async => showDatePicker,
              child: TitleTextDefault(text: "Fecha", decoration: TextDecoration.underline,),
            ),*/
            Text("\n\n"),
            Row(children: [
              SizedBox(width: size.width/3,child: ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/eventRegister"), text: "Registrar",)),
              SizedBox(width: size.width/3,child: ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/eventRegister"), text: "Editar",)),
              SizedBox(width: size.width/3,child: ButtonGeneric(onPressed: ()=> (/*aki va una funcion que elimine la weá*/), text: "Eliminar",)),
            ],),
            Text("\n"),
            ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/homePage"), text: "Salir", color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}