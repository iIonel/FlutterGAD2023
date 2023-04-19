import 'package:flutter/material.dart';

void main() {
  runApp(const TicTacToe());
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _TicTacToe(),
    );
  }
}

class _TicTacToe extends StatefulWidget {
  const _TicTacToe({Key? key}) : super(key: key);

  @override
  State<_TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<_TicTacToe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'tic-tac-toe',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}


