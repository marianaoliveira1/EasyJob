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
            Color(0xFF0E133A),
            Color(0xFF160B2F)
          ],
        ),
      ),
    );
  }
}
