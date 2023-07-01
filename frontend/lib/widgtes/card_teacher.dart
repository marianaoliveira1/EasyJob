import 'package:easyjobfrontend/features/teachers/screens/profile_teacher.dart';
import 'package:easyjobfrontend/screens/login/model/usuario.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../utils/colors.dart';

class CardTeacher extends StatefulWidget {
  const CardTeacher({super.key, required this.profanuncio});

  final EntityProfessorAnuncio profanuncio;
  @override
  State<CardTeacher> createState() => _CardTeacherState();
}

class _CardTeacherState extends State<CardTeacher> {
  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 0, 45, 107),
          Color.fromARGB(255, 4, 25, 54),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      strokeWidth: 2,
      radius: Radius.circular(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.profanuncio.nome,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: title),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.profanuncio.materia,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: title),
                  textAlign: TextAlign.start,
                ),
                Container(
                  width: 130,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    color: backgroundButton,
                  ),
                  child: Center(
                    child: Text(
                      "R\$ " + widget.profanuncio.preco.toString() + "/h",
                      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.profanuncio.descricao,
              style: TextStyle(fontSize: 18, color: title),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: backgroundButton,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileTeacherScreen(
                              profanuncio: widget.profanuncio,
                            )),
                  );
                },
                child: Text(
                  "Detalhes do professor",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
