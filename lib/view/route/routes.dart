import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/ui/event_history.dart';
import 'package:gestor_vehiculo/view/ui/event_register.dart';
import 'package:gestor_vehiculo/view/ui/home.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';
import 'package:gestor_vehiculo/view/ui/maintenance.dart';
import 'package:gestor_vehiculo/view/ui/register.dart';
import 'package:gestor_vehiculo/view/ui/vehicle_register.dart';


final routesApp = {
  "/loginPage": (BuildContext context) => const LoginPage(),
  "/registerPage": (BuildContext context) => const RegisterPage(),
  "/vehicleRegister": (BuildContext context) => const VehicleRegister(),
  "/homePage": (BuildContext context) => const HomePage(),
  "/eventHistory": (BuildContext context) => const EventHistory(),
  "/eventRegister": (BuildContext context) => const EventRegister(),
  "/maintenance": (BuildContext context) => const Maintenance(),
  
};