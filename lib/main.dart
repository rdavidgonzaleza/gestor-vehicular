import 'package:flutter/material.dart';
import '/view/login.dart';
import 'view/route/routes.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routesApp,
      debugShowCheckedModeBanner: false,
      home: const LoginPage()
    );
  }
}
