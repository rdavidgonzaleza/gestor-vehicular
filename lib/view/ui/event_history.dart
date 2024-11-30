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
      documents: ["Pieza.pdf", "documentos.docx"],
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
    Event(
      eventType: "Alineación llantas",
      date: "2025-05-02",
      description: "Tengo que ir al tecnico a alinear las llantas",
      documents: ["llantas.jpg"],
    ),
  ];

  void deleteEvent(int index) {
    setState(() {
      events.removeAt(index);
    });
  }

  void editEvent(int index) {
    Navigator.pushNamed(
      context,
      "/eventRegister",
      arguments: events[index],
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
                      flex: 2,
                      child: Text(
                        "Tipo",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Descripción",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Documentos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(10),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
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
                              flex: 2,
                              child: Text(
                                event.description,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: event.documents.map((doc) {
                                  return Text(
                                    doc,
                                    style: const TextStyle(fontSize: 12),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // Botones de editar y eliminar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () => editEvent(index),
                              icon: const Icon(Icons.edit, color: Colors.white),
                              label: const Text("Editar"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 236, 185, 107),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () => deleteEvent(index),
                              icon: const Icon(Icons.delete, color: Colors.white),
                              label: const Text("Eliminar"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 238, 161, 155),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



