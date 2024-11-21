import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/input_generic.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import '../common/background_default.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundDefault(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Registro",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const InputGeneric(hintText: "Correo electrónico"),
              const SizedBox(height: 10),
              const InputGeneric(hintText: "Contraseña", ),
              const SizedBox(height: 10),
              const InputGeneric(hintText: "Nombre"),
              const SizedBox(height: 10),
              const InputGeneric(hintText: "Apellidos"),
              const SizedBox(height: 10),
              const InputGeneric(hintText: "Identificación"),
              const SizedBox(height: 10),
              const InputGeneric(hintText: "Número de celular"),
              const SizedBox(height: 30),
              ButtonGeneric(
                onPressed: () => Navigator.pushNamed(context, "/loginPage"),
                text: "Registrar Usuario",
                color: Colors.blueAccent,
              ),
              const SizedBox(height: 10),
              ButtonGeneric(
                onPressed: () => Navigator.pushNamed(context, "/vehicleRegister"),
                color: Colors.grey,
                text: "Registrar Vehículo",
              ),
              const SizedBox(height: 10),
              ButtonGeneric(
                onPressed: () => Navigator.pushNamed(context, "/homePage"),
                text: "Salir",
                color: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
