import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:postgres/postgres.dart';

import '../../../utils/default_voltar_button.dart';
import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';

class RegisterStudent extends StatefulWidget {
  const RegisterStudent({super.key});

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  final _formKay = GlobalKey<FormState>();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  late PostgreSQLConnection _connection;

  @override
  void initState() {
    super.initState();
    _connectToDatabase();
  }

  void _connectToDatabase() async {
    _connection = PostgreSQLConnection(
      'your_host',
      5432,
      'your_database',
      username: 'your_username',
      password: 'your_password',
    );
    await _connection.open();
  }

  void _registerUser() async {
    if (_formKay.currentState!.validate()) {
      String name = _namecontroller.text;
      String email = _emailcontroller.text;
      String password = _passwordcontroller.text;

      try {
        await _connection.query(
          "INSERT INTO users (name, email, password) VALUES (@name, @email, @password)",
          substitutionValues: {
            'name': name,
            'email': email,
            'password': password,
          },
        );

        // Armazena o email com segurança no Flutter Secure Storage
        await _secureStorage.write(key: 'email', value: email);

        // Limpa os campos após o cadastro
        _namecontroller.clear();
        _emailcontroller.clear();
        _passwordcontroller.clear();

        // Exibe uma mensagem de sucesso
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Sucesso'),
              content: Text('Usuário cadastrado com sucesso!'),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      } catch (e) {
        print('Erro durante o cadastro: $e');
      }
    }
  }

  @override
  void dispose() {
    _connection?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 270.0),
            child: Form(
              key: _formKay,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  DefaultVoltarButton(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Que incrível que você quer aprender",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: title),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "O primeiro passo, é preencher esse formulário de inscrição.",
                    style: TextStyle(fontSize: 18, color: subtitle),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nome completo',
                      filled: true,
                      fillColor: backgroundInput,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    controller: _namecontroller,
                    validator: (name) {
                      if (name == null || name.isEmpty) {
                        return "Digite o seu nome";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Seu email',
                      filled: true,
                      fillColor: backgroundInput,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    controller: _emailcontroller,
                    validator: (email) {
                      if (email == null || email.isEmpty) {
                        return "Digite o seu email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Sua senha',
                        filled: true,
                        fillColor: backgroundInput,
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      controller: _passwordcontroller,
                      validator: (senha) {
                        if (senha == null || senha.isEmpty) {
                          return "Digite a senha";
                        } else if (senha.length < 5) {
                          return "Digite uma senha maior que 5 caracteres";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 170,
                  ),
                  SizedBox(
                    width: 270,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKay.currentState!.validate()) {
                          _registerUser();
                          Get.toNamed('/homepai');
                        }
                      },
                      child: Text(
                        'Fazer cadastro',
                        style: TextStyle(fontSize: 22),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: backgroundButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
