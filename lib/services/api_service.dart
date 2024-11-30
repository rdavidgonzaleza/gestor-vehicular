import 'package:http/http.dart' as http;
import 'dart:convert';

const String baseUrl = "http://192.168.1.44:8080"; 

class ApiService {
  // Token de autenticación
  static String? token;

  // Registra un nuevo usuario
  Future<Map<String, dynamic>> register(String nombre, String apellido, String correo, String telefono, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'nombre': nombre,
        'apellido': apellido,
        'correo': correo,
        'telefono': telefono,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body); // Devuelve los datos del usuario registrado
    } else {
      throw Exception('Error al registrar el usuario');
    }
  }

  // Realiza login y obtiene el token
  Future<Map<String, dynamic>> login(String correo, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'correo': correo,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = json.decode(response.body);
      token = responseBody['token']; // Guarda el token JWT
      return responseBody;
    } else {
      throw Exception('Error al hacer login');
    }
  }

  // Registra un nuevo vehículo
  Future<Map<String, dynamic>> registerCar(String marca, String modelo, String matricula, String numeroSerie) async {
    final response = await http.post(
      Uri.parse('$baseUrl/secure/car'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Usa el token JWT para autenticación
      },
      body: json.encode({
        'marca': marca,
        'modelo': modelo,
        'matricula': matricula,
        'numero-serie': numeroSerie,
      }),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body); // Devuelve el vehículo registrado
    } else {
      throw Exception('Error al registrar el vehículo');
    }
  }

  // Obtiene los vehículos del usuario
  Future<List<Map<String, dynamic>>> getCars() async {
    final response = await http.get(
      Uri.parse('$baseUrl/secure/cars'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Usa el token JWT para autenticación
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> responseBody = json.decode(response.body);
      return responseBody.map((car) => car as Map<String, dynamic>).toList();
    } else {
      throw Exception('Error al obtener los vehículos');
    }
  }

  // Registra un nuevo evento vehicular
  Future<Map<String, dynamic>> registerEvent(String vehiculoId, String tipoEvento, String fecha, String descripcion) async {
    final response = await http.post(
      Uri.parse('$baseUrl/secure/event'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Usa el token JWT para autenticación
      },
      body: json.encode({
        'vehiculo_id': vehiculoId,
        'tipo_evento': tipoEvento,
        'fecha': fecha,
        'descripcion': descripcion,
      }),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body); // Devuelve el evento registrado
    } else {
      throw Exception('Error al registrar el evento');
    }
  }

  // Obtiene todos los eventos de un vehículo
  Future<List<Map<String, dynamic>>> getEvents(String vehiculoId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/secure/events/$vehiculoId'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Usa el token JWT para autenticación
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> responseBody = json.decode(response.body);
      return responseBody.map((event) => event as Map<String, dynamic>).toList();
    } else {
      throw Exception('Error al obtener los eventos');
    }
  }

  // Actualiza un evento vehicular
  Future<Map<String, dynamic>> updateEvent(String eventoId, String tipoEvento, String fecha, String descripcion) async {
    final response = await http.put(
      Uri.parse('$baseUrl/secure/event/$eventoId'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Usa el token JWT para autenticación
      },
      body: json.encode({
        'tipo_evento': tipoEvento,
        'fecha': fecha,
        'descripcion': descripcion,
      }),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body); // Devuelve el evento actualizado
    } else {
      throw Exception('Error al actualizar el evento');
    }
  }
}

