import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:easyjobfrontend/utils/default_voltar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';
import '../../../widgtes/gradient_background.dart';

class ProfileTeacherScreen extends StatefulWidget {
  const ProfileTeacherScreen({
    super.key,
    required this.profanuncio,
  });

  final EntityProfessorAnuncio profanuncio;
  @override
  State<ProfileTeacherScreen> createState() => _ProfileTeacherScreenState();
}

class _ProfileTeacherScreenState extends State<ProfileTeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultVoltarButton(),
          Padding(
            padding: EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Container(
                        width: 130,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: backgroundButton,
                        ),
                        child: Text(
                          widget.profanuncio.materia,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.profanuncio.descricao,
                        style: TextStyle(fontSize: 25, color: title, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.profanuncio.dia_semana,
                        style: TextStyle(fontSize: 18, color: title),
                      ),
                      Text(
                        "Horario de inicio: " + widget.profanuncio.horario_comeco,
                        style: TextStyle(fontSize: 18, color: title),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Horario de termino: " + widget.profanuncio.horario_fim,
                        style: TextStyle(fontSize: 18, color: title),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        widget.profanuncio.nome,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: title),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Preço por hora:",
                            style: TextStyle(fontSize: 20, color: title),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.profanuncio.preco.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: title,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Ação quando o botão é pressionado
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          'assets/zap-icon.png',
                          width: 24,
                          height: 24,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Entre em contato pelo WhatsApp',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
