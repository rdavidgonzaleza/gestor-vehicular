import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestión de Vehículos"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Mis Vehículos",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/vehicleRegister"),
                child: const Text(
                  "+ Añadir nuevo vehículo",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildVehicleCard(
                context: context,
                title: "Vehículo 1: Ford Focus 2020",
                plate: "Placa: ABC123",
                onDetailsPressed: () =>
                    Navigator.pushNamed(context, "/maintenance2"),
                onEventsPressed: () =>
                    Navigator.pushNamed(context, "/eventRegister"),
              ),
              const SizedBox(height: 20),
              _buildVehicleCard(
                context: context,
                title: "Vehículo 2: Chevrolet Joy 2023",
                plate: "Placa: BDA321",
                onDetailsPressed: () =>
                    Navigator.pushNamed(context, "/maintenance"),
                onEventsPressed: () =>
                    Navigator.pushNamed(context, "/eventRegister"),
              ),
              const SizedBox(height: 30),
              ButtonGeneric(
                text: "Salir",
                onPressed: () => Navigator.pushNamed(context, "/loginPage"),
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
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
            const SizedBox(height: 8),
            Text(
              plate,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: onDetailsPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text("Ver detalles"),
                ),
                ElevatedButton(
                  onPressed: onEventsPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                  ),
                  child: const Text("Eventos"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
