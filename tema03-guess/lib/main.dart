import 'package:flutter/material.dart';

void main() {
  runApp(const GuessApp());
}

class GuessApp extends StatelessWidget {
  const GuessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class _GuessApp extends StatefulWidget {
  const _GuessApp({Key? key}) : super(key: key);

  @override
  State<_GuessApp> createState() => _GuessAppState();
}

class _GuessAppState extends State<_GuessApp> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
   );
  }
}

