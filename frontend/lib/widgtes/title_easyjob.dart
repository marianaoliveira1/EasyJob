import 'package:easyjobfrontend/utils/colors.dart';
import 'package:flutter/material.dart';

class EasyJobTitle extends StatelessWidget {
  const EasyJobTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Easy",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
        ),
        Text(
          "Job",
          style: TextStyle(color: title, fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ],
    );
  }
}
