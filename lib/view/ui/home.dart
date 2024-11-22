import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Gestión de Vehículos",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "¡Bienvenido de nuevo!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Gestiona tus vehículos de manera eficiente.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/vehicleRegister"),
                child: Row(
                  children: const [
                    Icon(Icons.add_circle_outline, color: Colors.blueAccent),
                    SizedBox(width: 8),
                    Text(
                      "Añadir nuevo vehículo",
                      style: TextStyle(fontSize: 16, color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Mis Vehículos",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildVehicleCard(
                context: context,
                title: "Ford Focus 2020",
                plate: "ABC123",
                onDetailsPressed: () => Navigator.pushNamed(context, "/maintenance"),
                onEventsPressed: () => Navigator.pushNamed(context, "/eventRegister"),
              ),
              const SizedBox(height: 20),
              _buildVehicleCard(
                context: context,
                title: "Chevrolet Joy 2023",
                plate: "BDA321",
                onDetailsPressed: () => Navigator.pushNamed(context, "/maintenance"),
                onEventsPressed: () => Navigator.pushNamed(context, "/eventRegister"),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, "/loginPage"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 208, 208, 208),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 16,
                    ),
                  ),
                  child: const Text("Salir", style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVehicleCard({
    required BuildContext context,
    required String title,
    required String plate,
    required VoidCallback onDetailsPressed,
    required VoidCallback onEventsPressed,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.directions_car, size: 40, color: Colors.blueAccent),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Placa: $plate",
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: onDetailsPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text("Ver detalles"),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: onEventsPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text("Eventos"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
