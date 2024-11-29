import 'package:flutter/material.dart';

class Event {
  final String eventType;
  final String date;
  final String description;
  final List<String> documents;

  Event({
    required this.eventType,
    required this.date,
    required this.description,
    required this.documents,
  });
}

class EventHistory extends StatefulWidget {
  EventHistory({super.key});

  @override
  _EventHistoryState createState() => _EventHistoryState();
}

class _EventHistoryState extends State<EventHistory> {
  final List<Event> events = [
    Event(
      eventType: "Mantenimiento",
      date: "2024-11-01",
      description: "Revisión del sistema eléctrico",
      documents: ["documento1.pdf", "documento2.docx"],
    ),
    Event(
      eventType: "Revisión",
      date: "2024-11-30",
      description: "Inspección de seguridad",
      documents: ["inspeccion_report.pdf"],
    ),
    Event(
      eventType: "Renovacion soat",
      date: "2025-11-02",
      description: "Renovación anual del soat",
      documents: ["Document_soat.pdf"],
    ),
  ];

  // Función para eliminar un evento
  void deleteEvent(int index) {
    setState(() {
      events.removeAt(index);
    });
  }

  // Función para editar un evento
  void editEvent(int index) {
    // Redirigimos a la pantalla de registro de eventos, pasando los datos del evento a editar
    Navigator.pushNamed(
      context,
      "/eventRegister",
      arguments: events[index],  // Pasamos el evento a la pantalla de registro
    );
  }

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
                    Expanded(
                      child: Text(
                        "Documentos",
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
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
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
                            event.eventType,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            event.date,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            event.description,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: event.documents.map((doc) {
                              return Text(
                                doc, // Nombre del documento
                                style: const TextStyle(fontSize: 12),
                              );
                            }).toList(),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.orange),
                          onPressed: () => editEvent(index),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => deleteEvent(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
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
}

