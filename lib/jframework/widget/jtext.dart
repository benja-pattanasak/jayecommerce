import 'package:flutter/material.dart';

class JText extends StatefulWidget {
  final String data;
  const JText({super.key, required this.data});

  @override
  State<JText> createState() => _JTextState(data: this.data);
}

class _JTextState extends State<JText> {
  String data;
  _JTextState({required this.data}) {}
  @override
  Widget build(BuildContext context) {
    return Text(
      this.data,
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}
