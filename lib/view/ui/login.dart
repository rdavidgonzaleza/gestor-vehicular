import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white, // Fondo blanco
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  // Logo como imagen, no circular
                  Image.asset(
                    'assets/logo.jpg',  // Asegúrate de que la imagen esté en la ruta correcta
                    width: 100,  // Ajusta el tamaño según lo necesites
                    height: 100,
                  ),
                  const SizedBox(height: 30),
                  // Bienvenida
                  const Text(
                    "¡Bienvenido de nuevo!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Inicia sesión para gestionar tus vehículos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Campo de usuario
                  _buildInputField(
                    controller: userController,
                    hintText: "Usuario",
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 20),
                  // Campo de contraseña
                  _buildInputField(
                    controller: passwordController,
                    hintText: "Contraseña",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  // Botón de inicio de sesión
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, "/homePage"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // Color del botón
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "  Iniciar Sesión  ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Texto para registro
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "¿No tienes cuenta? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, "/registerPage"),
                        child: const Text(
                          "Regístrate",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromARGB(255, 89, 140, 227),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Widget para crear un campo de entrada estilizado
  Widget _buildInputField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.blueAccent),
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      ),
    );
  }
}





