import 'dart:convert';
import 'package:easyjobfrontend/controller/controller.dart';
import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsuarioService {
  static const String baseUrl = 'http://localhost:8080/swagger-ui.html#'; // URL do seu servidor

  Future<String?> fazerLogin(String email, String senha) async {
    final url = Uri.parse('$baseUrl/login');
    final response = await http.post(url, body: {
      'email': email,
      'senha': senha,
    });

    if (response.statusCode == 200) {
      final respostaJson = json.decode(response.body);
      final token = respostaJson['token'];

      Get.find<ControllerAutenticacao>().usuario.value = EntityUsuario(
        nome: respostaJson['nome'],
        senha: respostaJson['senha'],
        email: respostaJson['email'],
      );
      return token;
    } else {
      throw Exception('Erro de autenticação: ${response.body}');
    }
  }
}
