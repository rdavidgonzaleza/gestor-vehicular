import 'package:flutter/material.dart';
import 'package:gestor_vehiculo/view/ui/event_history.dart';
import 'package:gestor_vehiculo/view/ui/event_register.dart' as event;
import 'package:gestor_vehiculo/view/ui/home.dart';
import 'package:gestor_vehiculo/view/ui/login.dart';
import 'package:gestor_vehiculo/view/ui/maintenance.dart';
import 'package:gestor_vehiculo/view/ui/register.dart';
import 'package:gestor_vehiculo/view/ui/vehicle_register.dart' as vehicle;


final routesApp = {
  "/loginPage": (BuildContext context) => const LoginPage(),
  "/registerPage": (BuildContext context) => const RegisterPage(),
  "/vehicleRegister": (BuildContext context) => const vehicle.VehicleRegister(),
  "/homePage": (BuildContext context) => const HomePage(),
  "/eventHistory": (BuildContext context) =>  EventHistory(),
  "/eventRegister": (BuildContext context) => const event.EventRegister(),
  "/maintenance": (BuildContext context) => const Maintenance(),
  
};