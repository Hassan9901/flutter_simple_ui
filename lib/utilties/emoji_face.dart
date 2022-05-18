// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class emojiface extends StatelessWidget {
  final String emojifacce;
  const emojiface({Key? key, required this.emojifacce}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(10),
      child: Text(
        emojifacce,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
