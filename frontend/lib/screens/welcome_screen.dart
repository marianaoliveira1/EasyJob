import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgtes/button_initial.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: background,
        height: height,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: height * 0.10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.145,
              ),
              Text(
                "EasyJob",
                style: TextStyle(color: title),
              ),
              Text(
                "A plataforma para encontrar o professor \nmais perto do seu filho(a)",
                style: TextStyle(color: title),
              ),
              SizedBox(
                height: height * 0.12,
              ),
              Row(
                children: [
                  ButtonInitial(
                    image: "assets/images/Aulas.svg",
                    title: "Pai",
                    press: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonInitial(
                    image: "assets/images/Estudar.svg",
                    title: "Professor",
                    press: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
