import 'dart:core';

class Propietario {
  Propietario(
    this.identificacion,
    this.tipoDocumento,
    this.primerNombre,
    this.primerApellido,
    this.segundoNombre,
    this.segundoApellido,
    this.licenciaNumero,
    this.password,
    this.email,
    this.telefono,
  );
  /* Text(text: algo, width: 25.0) */
  String? identificacion;
  String? tipoDocumento;
  String? primerNombre;
  String? segundoNombre;
  String? primerApellido;
  String? segundoApellido;
  String? licenciaNumero;
  String? password;
  String? email;
  String? telefono;

  bool iniciarSesion(email, password){
    if(email == this.email && password == this.password)
      // ignore: curly_braces_in_flow_control_structures
      return true;
    return false;
  }
  
}