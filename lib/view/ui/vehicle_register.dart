import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/input_generic.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';

class VehicleRegister extends StatelessWidget {
  const VehicleRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrar Vehículo"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Registrar Vehículo",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: InputGeneric(
                    hintText: "Marca",
                    maxWidth: size.width * 0.4,
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 1,
                  child: InputGeneric(
                    hintText: "Modelo",
                    maxWidth: size.width * 0.4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: InputGeneric(
                    hintText: "Placa",
                    maxWidth: size.width * 0.4,
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  flex: 1,
                  child: InputGeneric(
                    hintText: "Tipo de vehículo",
                    maxWidth: size.width * 0.4,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const InputGeneric(
              hintText: "Número de serie",
            ),
            const SizedBox(height: 30),
            ButtonGeneric(
              onPressed: () => Navigator.pushNamed(context, "/homePage"),
              text: "Registrar",
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 10),
            ButtonGeneric(
              onPressed: () => Navigator.pushNamed(context, "/loginPage"),
              text: "Salir",
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}


