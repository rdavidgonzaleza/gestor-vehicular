import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/common/button_generic.dart';
import '../common/background_default.dart';
import '../common/Input_Generic.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: BackgroundDefault(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Image.asset('assets/icon.png', height: 100), // Logo centrado
                  const SizedBox(height: 20),
                  const Text(
                    "Bienvenido de nuevo",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Inicia sesión para continuar",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  InputGeneric(
                    hintText: "Usuario",
                    maxHeight: size.height,
                    maxWidth: size.width,
                    controller: userController,
                  ),
                  const SizedBox(height: 20),
                  InputGeneric(
                    hintText: "Contraseña",
                    maxHeight: size.height,
                    maxWidth: size.width,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 30),
                  ButtonGeneric(
                    onPressed: () => Navigator.pushNamed(context, "/homePage"),
                    text: "Iniciar Sesión",
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("¿No tienes cuenta? ",
                          style: TextStyle(color: Colors.grey)),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, "/registerPage"),
                        child: const Text(
                          "Regístrate",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

