import 'package:easyjobfrontend/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonInitial extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback press;

  const ButtonInitial(
      {super.key,
      required this.image,
      required this.title,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF22244F), // Define a cor de fundo do botão
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(8), // Define o raio das bordas arredondadas
        ),
        minimumSize:
            Size(300, 104), // Define a largura e altura mínimas do botão
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
          ), // Define a imagem do livro
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFFFFFFF), // Define a cor do texto do nome
              fontSize: 24,
            ),
          ), // Define o texto do nome
        ],
      ),
    );
  }
}
