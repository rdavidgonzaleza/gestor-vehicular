import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';

class EventHistory extends StatelessWidget {
  const EventHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Historial de Eventos"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Historial de Eventos",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(
                  child: Text(
                    "Tipo de Evento",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Fecha",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    "Descripción",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Lista de eventos (datos simulados)
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5, // Cambiar por el número real de eventos
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          index % 2 == 0 ? "Mantenimiento" : "Inspección",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "2024-11-${index + 1}", // Fecha simulada
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Evento ${index + 1}", // Descripción simulada
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            // Acciones: Registrar, Editar, Eliminar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonGeneric(
                  onPressed: () => Navigator.pushNamed(context, "/eventRegister"),
                  text: "Registrar",
                ),
                ButtonGeneric(
                  onPressed: () => Navigator.pushNamed(context, "/eventRegister"),
                  text: "Editar",
                ),
                ButtonGeneric(
                  onPressed: () {
                    // Función para eliminar el evento
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Eliminar Evento"),
                        content: const Text("¿Está seguro de que desea eliminar este evento?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancelar"),
                          ),
                          TextButton(
                            onPressed: () {
                              // Lógica de eliminación aquí
                              Navigator.pop(context);
                            },
                            child: const Text("Eliminar"),
                          ),
                        ],
                      ),
                    );
                  },
                  text: "Eliminar",
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: ButtonGeneric(
                onPressed: () => Navigator.pushNamed(context, "/homePage"),
                text: "Salir",
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
