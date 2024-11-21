import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/input_generic.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';

class EventRegister extends StatelessWidget {
  const EventRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de Eventos"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Registro de Eventos",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Tipo de evento:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              InputGeneric(
                hintText: "Ingrese el tipo de evento",
                maxWidth: size.width,
              ),
              const SizedBox(height: 20),
              const Text(
                "Fecha:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () => _selectDate(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Text(
                    "Seleccionar fecha",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Descripción:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              InputGeneric(
                hintText: "Ingrese una breve descripción",
                maxWidth: size.width,
              ),
              const SizedBox(height: 20),
              const Text(
                "Documentos Relacionados",
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
              ButtonGeneric(
                text: "Subir Documentos",
                color: Colors.grey[400]!,
                onPressed: () => Navigator.pushNamed(context, "/documents"),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonGeneric(
                    onPressed: () => Navigator.pushNamed(context, "/eventHistory"),
                    text: "Consultar Eventos",
                    color: Colors.blueAccent,
                  ),
                  ButtonGeneric(
                    onPressed: () => Navigator.pushNamed(context, "/homePage"),
                    text: "Salir",
                    color: Colors.grey[600]!,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Función para seleccionar una fecha
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      // Aquí puedes actualizar el estado para mostrar la fecha seleccionada
      print("Fecha seleccionada: ${picked.toLocal()}");
    }
  }
}
