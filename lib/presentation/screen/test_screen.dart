import 'package:flutter/material.dart';
import 'package:jayecommerce/config/app_space.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return AppSpace.Height20();
  }
}
