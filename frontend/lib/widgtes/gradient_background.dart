import 'package:flutter/material.dart';

class DefaultBackgroundGradient extends StatelessWidget {
  DefaultBackgroundGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(240, 240, 236, 236),
            // Color.fromARGB(255, 4, 11, 42),
            // Color.fromARGB(255, 0, 45, 107),
          ],
        ),
      ),
    );
  }
}
