import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/Input_Generic.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';

class EventRegister extends StatelessWidget {
  const EventRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TitleTextDefault(text: "\nRegistro de Eventos",),
            TitleTextDefault(text: "\nTipo de evento: ",),
            InputGeneric(hintText: "",maxWidth: size.width,),
            InkWell(
              onTap: () async => showDatePicker,
              child: TitleTextDefault(text: "Fecha: ", ),
            ),
            
            InputGeneric(hintText: "Descripción", maxWidth: size.width,),
            TitleTextDefault(text: "Documentos Relacionados", decoration: TextDecoration.underline,),
            ButtonGeneric(text: "", color: Colors.grey, onPressed: ()=>Navigator.pushNamed(context, "/documents", )),
            //en esta parte se tiene que abrir para que el propietario pueda subir los documentos
            //ButtonGeneric(text: "Registrar Evento", onPressed: f)),
            

            Text("\n\n"),
            ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/eventHistory"), text: "Consultar",),
            ButtonGeneric(onPressed: ()=> Navigator.pushNamed(context, "/homePage"), text: "Salir", color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}

dateDialog(BuildContext context) {
  showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)
    )
  );
}