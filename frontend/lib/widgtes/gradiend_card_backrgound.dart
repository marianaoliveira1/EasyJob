import 'package:flutter/material.dart';

class DefaultBackgroundCardTeacher extends StatelessWidget {
  const DefaultBackgroundCardTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF141437),
            Color(0xFF22244F)
          ],
        ),
      ),
    );
  }
}
