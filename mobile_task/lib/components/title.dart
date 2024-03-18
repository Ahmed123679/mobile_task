import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  double fontsize;
  Color color;
  String title;
  Title(this.title, {this.fontsize = 16, this.color = Colors.blue, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          this.title,
          style: TextStyle(color: this.color, fontSize: this.fontsize),
        )
      ],
    );
  }
}
