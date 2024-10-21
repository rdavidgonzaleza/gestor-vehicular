import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';
import 'package:gestor_vehiculo/view/ui/register.dart';
import 'package:gestor_vehiculo/view/ui/vehicle_register.dart';

final routesApp = {
  "/loginPage": (BuildContext context) => const LoginPage(),
  "/registerPage": (BuildContext context) => const RegisterPage(),
  "/vehicleRegister": (BuildContext context) => const VehicleRegister(),
};