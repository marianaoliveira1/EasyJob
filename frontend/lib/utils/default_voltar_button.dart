import 'package:flutter/material.dart';

import 'colors.dart';

class DefaultVoltarButton extends StatelessWidget {
  const DefaultVoltarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(
            0,
          ),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Row(
        children: [
          const Icon(
            Icons.navigate_before,
            color: Color.fromARGB(255, 0, 45, 107),
          ),
          Text(
            "Voltar",
            style: TextStyle(color: title),
          ),
        ],
      ),
    );
  }
}
