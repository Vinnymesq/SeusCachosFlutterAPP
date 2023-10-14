import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  
  final String _baseUrl = "http://localhost:8080/api/usuarioapi/registerApi";
  
  Future<void> registerUser(String email, String senha) async {
    final String apiUrl = "$_baseUrl/registerUser";

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode({
        'email': email,
        'senha': senha,
        // ... quaisquer outros campos necessários
      }),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      // Registro bem-sucedido
      final Map<String, dynamic> responseBody = json.decode(response.body);
      // Faça algo com a resposta, como navegar para uma nova tela
    } else {
      // Falha no registro
      final Map<String, dynamic> responseBody = json.decode(response.body);
      // Mostre uma mensagem de erro, ou faça o tratamento adequado
    }
  }
}
