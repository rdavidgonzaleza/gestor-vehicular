import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Crear Cuenta",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "¡Bienvenido!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Por favor completa los campos para registrarte.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            _buildInputField(
              hintText: "Correo electrónico",
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 20),
            _buildInputField(
              hintText: "Contraseña",
              icon: Icons.lock_outline,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            _buildInputField(
              hintText: "Nombre",
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 20),
            _buildInputField(
              hintText: "Apellidos",
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 20),
            _buildInputField(
              hintText: "Identificación",
              icon: Icons.badge_outlined,
            ),
            const SizedBox(height: 20),
            _buildInputField(
              hintText: "Número de celular",
              icon: Icons.phone_outlined,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/loginPage"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Center(
                child: Text(
                  "Registrar Usuario",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/vehicleRegister"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 222, 221, 221),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Center(
                child: Text(
                  "Registrar Vehículo",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/loginPage"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Center(
                child: Text(
                  "Salir",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.blueAccent),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      ),
    );
  }
}
