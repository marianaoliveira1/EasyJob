import 'dart:convert';
import 'package:http/http.dart' as http;

class UsuarioService {
  static const String baseUrl = 'http://localhost:8080/swagger-ui.html#'; // URL do seu servidor

  Future<String?> fazerLogin(String nomeUsuario, String senha) async {
    final url = Uri.parse('$baseUrl/login');
    final response = await http.post(url, body: {
      'nomeUsuario': nomeUsuario,
      'senha': senha,
    });

    if (response.statusCode == 200) {
      final respostaJson = json.decode(response.body);
      final token = respostaJson['token']; // Token de autenticação recebido do servidor
      return token;
    } else {
      throw Exception('Erro de autenticação: ${response.body}');
    }
  }
}
