import 'package:easyjobfrontend/features/student/screens/home_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:postgres/postgres.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../utils/default_voltar_button.dart';
import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';

class RegisterTeacher extends StatefulWidget {
  const RegisterTeacher({super.key});

  @override
  State<RegisterTeacher> createState() => _RegisterTeacherState();
}

class _RegisterTeacherState extends State<RegisterTeacher> {
  final _formKay = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _cidadecontrolle = TextEditingController();
  final _estadocontrolle = TextEditingController();
  final _whatsappcontrolle = TextEditingController();
  final _sobrevocecontroller = TextEditingController();
  final _materiascontroller = TextEditingController();
  final _precocontroller = TextEditingController();
  final _diascontroller = TextEditingController();
  final _decontroller = TextEditingController();
  final _atecontroller = TextEditingController();

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  late PostgreSQLConnection _connection;

  Future<void> _registro(BuildContext context) async {
    final email = _emailcontroller.text;
    final password = _passwordcontroller.text;
    final name = _namecontroller.text;
    await Supabase.instance.client.auth.signUp(password: password, email: email);
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _connectToDatabase();
  // }

  // void _connectToDatabase() async {
  //   _connection = PostgreSQLConnection(
  //     'your_host',
  //     5432,
  //     'your_database',
  //     username: 'your_username',
  //     password: 'your_password',
  //   );
  //   await _connection.open();
  // }

  // void _registerUser() async {
  //   if (_formKay.currentState!.validate()) {
  //     String name = _namecontroller.text;
  //     String email = _emailcontroller.text;
  //     String password = _passwordcontroller.text;
  //     String whatsapp = _whatsappcontrolle.text;
  //     String city = _cidadecontrolle.text;
  //     String state = _estadocontrolle.text;
  //     String description = _sobrevocecontroller.text;
  //     String subjects = _materiascontroller.text;
  //     double price = double.parse(_precocontroller.text);
  //     String days = _diascontroller.text;
  //     String startTime = _decontroller.text;
  //     String endTime = _atecontroller.text;

  //     try {
  //       await _connection.query(
  //         "INSERT INTO users (name, email, password, whatsapp, city, state, description, subjects, price, days, start_time, end_time) VALUES (@name, @email, @password, @whatsapp, @city, @state, @description, @subjects, @price, @days, @start_time, @end_time)",
  //         substitutionValues: {
  //           'name': name,
  //           'email': email,
  //           'password': password,
  //           'whatsapp': whatsapp,
  //           'city': city,
  //           'state': state,
  //           'description': description,
  //           'subjects': subjects,
  //           'price': price,
  //           'days': days,
  //           'start_time': startTime,
  //           'end_time': endTime,
  //         },
  //       );

  //       // Exibe uma mensagem de sucesso
  //       showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: Text('Sucesso'),
  //             content: Text('Usuário cadastrado com sucesso!'),
  //             actions: <Widget>[
  //               TextButton(
  //                 child: Text('OK'),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //             ],
  //           );
  //         },
  //       );
  //     } catch (e) {
  //       print('Erro durante o cadastro: $e');
  //     }
  //   }
  // }

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
            child: Center(
              child: ListView(children: [
                Form(
                  key: _formKay,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      DefaultVoltarButton(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Que incrível que você quer dar aulas",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: title),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "O primeiro passo, é preencher esse formulário de inscrição",
                        style: TextStyle(fontSize: 18, color: subtitle),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Seus dados",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Cidade',
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: backgroundModal,
                                      width: 1.0, // Defina a espessura da borda conforme necessário
                                    ),
                                  ),
                                ),
                                controller: _cidadecontrolle,
                                validator: (cidade) {
                                  if (cidade == null || cidade.isEmpty) {
                                    return "Digite a sua cidade";
                                  }
                                  return null;
                                }),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Estado',
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: backgroundModal,
                                      width: 1.0, // Defina a espessura da borda conforme necessário
                                    ),
                                  ),
                                ),
                                controller: _estadocontrolle,
                                validator: (estado) {
                                  if (estado == null || estado.isEmpty) {
                                    return "Digite o seu estado";
                                  }
                                  return null;
                                }),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'WhatsApp',
                            filled: true,
                            fillColor: Colors.transparent,
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: backgroundModal,
                                width: 1.0, // Defina a espessura da borda conforme necessário
                              ),
                            ),
                          ),
                          controller: _whatsappcontrolle,
                          validator: (whatsapp) {
                            if (whatsapp == null || whatsapp.isEmpty) {
                              return "Digite o número do seu whatsapp";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          minLines: 1, // Set this
                          maxLines: 6, // and this
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Sobre você',
                            filled: true,
                            fillColor: Colors.transparent,
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: backgroundModal,
                                width: 1.0, // Defina a espessura da borda conforme necessário
                              ),
                            ),
                          ),
                          controller: _sobrevocecontroller,
                          validator: (sobrevoce) {
                            if (sobrevoce == null || sobrevoce.isEmpty) {
                              return "Digite alguma coisa sobre você";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Sobre as aulas",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Materias',
                            filled: true,
                            fillColor: Colors.transparent,
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: backgroundModal,
                                width: 1.0, // Defina a espessura da borda conforme necessário
                              ),
                            ),
                          ),
                          controller: _materiascontroller,
                          validator: (materias) {
                            if (materias == null || materias.isEmpty) {
                              return "Digite as materias que você ensina";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Custo da sua hora por aula (R\$)',
                            filled: true,
                            fillColor: Colors.transparent,
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              borderSide: BorderSide(
                                color: backgroundModal,
                                width: 1.0, // Defina a espessura da borda conforme necessário
                              ),
                            ),
                          ),
                          controller: _precocontroller,
                          validator: (preco) {
                            if (preco == null || preco.isEmpty) {
                              return "Digite o proeço por sua hora";
                            }
                            return null;
                          }),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Horários disponíveis",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: title),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Dias da semana',
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: backgroundModal,
                                      width: 1.0, // Defina a espessura da borda conforme necessário
                                    ),
                                  ),
                                ),
                                controller: _diascontroller,
                                validator: (dias) {
                                  if (dias == null || dias.isEmpty) {
                                    return "Digite os dia(s) que você quer ensina";
                                  }
                                  return null;
                                }),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'De',
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: backgroundModal,
                                      width: 1.0, // Defina a espessura da borda conforme necessário
                                    ),
                                  ),
                                ),
                                controller: _decontroller,
                                validator: (de) {
                                  if (de == null || de.isEmpty) {
                                    return "Digite o horário que começa a sua aula";
                                  }
                                  return null;
                                }),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Até',
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: BorderSide(
                                      color: backgroundModal,
                                      width: 1.0, // Defina a espessura da borda conforme necessário
                                    ),
                                  ),
                                ),
                                controller: _atecontroller,
                                validator: (ate) {
                                  if (ate == null || ate.isEmpty) {
                                    return "Digite o horário que termina a sua aula";
                                  }
                                  return null;
                                }),
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      SizedBox(
                        width: 270,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKay.currentState!.validate()) {
                              _registro(context);
                              Get.toNamed('/perfildoprofessor');
                            }
                          },
                          child: Text(
                            'Cadastrar',
                            style: TextStyle(fontSize: 22),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: backgroundButton,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
