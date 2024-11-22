import 'package:flutter/material.dart';

class EventHistory extends StatelessWidget {
  const EventHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historial de Eventos"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Historial de Eventos",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Cabecera de la tabla
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        "Tipo de Evento",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
                          color: Colors.white,
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
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // Lista de eventos
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5, // Cambiar por el número real de eventos
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
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
                  _buildActionButton(
                    context: context,
                    text: "Registrar",
                    color: Colors.blueAccent,
                    onPressed: () => Navigator.pushNamed(context, "/eventRegister"),
                  ),
                  _buildActionButton(
                    context: context,
                    text: "Editar",
                    color: Colors.orangeAccent,
                    onPressed: () => Navigator.pushNamed(context, "/eventRegister"),
                  ),
                  _buildActionButton(
                    context: context,
                    text: "Eliminar",
                    color: Colors.redAccent,
                    onPressed: () {
                      // Confirmación para eliminar
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Eliminar Evento"),
                          content: const Text(
                              "¿Está seguro de que desea eliminar este evento?"),
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
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Botón de salir
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, "/homePage"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Salir",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget para construir botones de acción
  Widget _buildActionButton({
    required BuildContext context,
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }
}
