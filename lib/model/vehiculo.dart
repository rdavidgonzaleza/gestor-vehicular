import 'package:gestor_vehiculo/model/propietario.dart';

class Vehiculo {
  Vehiculo(
    this.propietario, 
    this.numeroSerie, 
    this.placa, 
    this.modelo, 
    this.marca, 
    this.linea, 
    this.tipo, 
    this.carroceria
  );
  String? numeroSerie;
  Propietario propietario;
  String? placa;
  String? modelo;
  String? marca;
  String? linea;
  String? tipo;
  String? carroceria;
}