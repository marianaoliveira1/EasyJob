import 'package:easyjobfrontend/controller/controller_anuncio_professor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../widgtes/card_teacher.dart';
import '../../../widgtes/gradient_background.dart';

class HomeScreenStudent extends StatefulWidget {
  const HomeScreenStudent({super.key});

  @override
  State<HomeScreenStudent> createState() => _HomeScreenStudentState();
}

class _HomeScreenStudentState extends State<HomeScreenStudent> {
  @override
  Widget build(BuildContext context) {
    var cProfessores = Get.find<ControllerAnuncioProfessor>();
    return Scaffold(
      body: Stack(
        children: [
          DefaultBackgroundGradient(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "EASYJOB",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: title),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          labelText: 'Pesquise por um um professor',
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Obx(() {
                    return GridView.count(
                      crossAxisCount: 3,
                      children: [
                        for (var prof in cProfessores.professor_anuncio)
                          CardTeacher(
                            profanuncio: prof,
                          )
                      ],
                    );
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
