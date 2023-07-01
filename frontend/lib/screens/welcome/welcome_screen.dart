import 'package:easyjobfrontend/screens/login/login_screen.dart';
import 'package:easyjobfrontend/utils/colors.dart';
import 'package:easyjobfrontend/widgtes/title_easyjob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 50, top: 20, right: 50),
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EasyJobTitle(),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginScreen()),
                                );
                              },
                              child: Text(
                                "Entrar",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            RegistrationOption(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "A plataforma que pode ajudar você a encontrar \no professor mais perto do seu filho(a)",
                                style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Online ou presencial, faça a escolha entre os milhares de professores",
                                style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/welcome-screen.svg",
                                width: 500,
                                height: 500,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        child: Column(
                      children: [
                        Text(
                          "Aprender nunca \nfoi tão simples",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CardIdeias(
                          number: 1,
                          title: 'Procure',
                          subtitle: 'Consulte livremente os perfis e entre em contato com o professor ideal de acordo com os seus critérios (tarifa, diplomas, avaliações, aulas online ou presenciais)',
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CardIdeias(
                          number: 2,
                          title: 'Contate',
                          subtitle: 'Rápido e fácil, os professores respondem em algumas horas! E se você não conseguir encontrar o professor perfeito, a nossa equipe está sempre pronta pra ajudar.',
                        ),
                        SizedBox(
                          height: 200,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Torne-se também um professor",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Compartilhe seus conhecimentos, viva da sua paixão e torne-se independente",
                                style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              GestureDetector(
                                child: Container(
                                  height: 60,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: backgroundButton,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      "Saiba mais",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                        ),
                        SizedBox(height: 80),
                        Text("Website desenvolvido durante a disciplina de Projeto Integrado em Engenharia de Software II, no semestre 2023.1"),
                        Text("Por Mariana Oliveira, Falcão Filho e Wilhelm Steins"),
                        SizedBox(height: 80),
                      ],
                    ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardIdeias extends StatefulWidget {
  const CardIdeias({
    super.key,
    required this.number,
    required this.title,
    required this.subtitle,
  });

  final int number;
  final String title;
  final String subtitle;

  @override
  State<CardIdeias> createState() => _CardIdeiasState();
}

class _CardIdeiasState extends State<CardIdeias> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 400, top: 20, right: 600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.number.toString() + ". ",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                widget.title,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.subtitle,
            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
