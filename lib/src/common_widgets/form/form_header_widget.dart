import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.title, required this.subTitle
  }) : super(key: key);

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', width: 200),
        Text(
          title,
          style: TextStyle(color: Colors.red),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
