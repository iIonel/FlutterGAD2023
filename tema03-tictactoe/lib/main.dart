import 'package:flutter/material.dart';

void main() {
  runApp(const TicTacToe());
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _TicTacToe(),
    );
  }
}

class _TicTacToe extends StatefulWidget {
  const _TicTacToe();

  @override
  State<_TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<_TicTacToe> {
  static const int size = 3;
  List<List<Color>> table = <List<Color>>[];
  Color currentColor = Colors.red;
  bool end = false;

  @override
  void initState(){
    super.initState();
    resetGame();
  }

  Future<void> resetGame() async{
    //create background colors for table
    for(int i = 0; i < size; ++i){
      // ignore: prefer_final_locals
      List<Color> row = <Color>[];
      for(int j = 0; j < size; ++j) {
        row.add(Colors.white);
      }
      table.add(row);
    }
  }

  void newGame(){
    table.clear();
    for(int i = 0; i < size; ++i){
      // ignore: prefer_final_locals
      List<Color> row = <Color>[];
      for(int j = 0; j < size; ++j) {
        row.add(Colors.white);
      }
      table.add(row);
    }
  }

  bool endGame(){
    if(table[0][0] == table[0][1] && table[0][1] == table[0][2] && table[0][0] != Colors.white){
      return true;
    }
    else if(table[1][0] == table[1][1] && table[1][1] == table[1][2] && table[1][0] != Colors.white){
      return true;
    }
    else if(table[2][0] == table[2][1] && table[2][1] == table[2][2] && table[2][0] != Colors.white){
      return true;
    }
    else if(table[0][0] == table[1][0] && table[1][0] == table[2][0] && table[0][0] != Colors.white){
      return true;
    }
    else if(table[0][1] == table[1][1] && table[1][1] == table[2][1] && table[0][1] != Colors.white){
      return true;
    }
    else if(table[0][2] == table[1][2] && table[1][2] == table[2][2] && table[0][2] != Colors.white){
      return true;
    }
    else if(table[0][0] == table[1][1] && table[1][1] == table[2][2] && table[0][0] != Colors.white){
      return true;
    }
    else if(table[0][2] == table[1][1] && table[1][1] == table[2][0] && table[0][2] != Colors.white){
      return true;
    }
    else{
      for(int i = 0; i < size; ++i){
        for(int j = 0; j < size; ++j){
          if(table[i][j] == Colors.white) {
            return false;
          }
        }
      }
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
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
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[0][0] == Colors.white) {
                      table[0][0] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[0][0],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[0][1] == Colors.white) {
                      table[0][1] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[0][1],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[0][2] == Colors.white) {
                      table[0][2] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[0][2],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[1][0] == Colors.white) {
                      table[1][0] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[1][0],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[1][1] == Colors.white) {
                      table[1][1] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[1][1],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[1][2] == Colors.white) {
                      table[1][2] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[1][2],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[2][0] == Colors.white) {
                      table[2][0] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[2][0],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[2][1] == Colors.white) {
                      table[2][1] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[2][1],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    if(table[2][2] == Colors.white) {
                      table[2][2] = currentColor;
                      if(currentColor == Colors.red){
                        currentColor = Colors.green;
                      }
                      else{
                        currentColor = Colors.red;
                      }
                    }
                    end = endGame();
                  });
                },
                child: AnimatedContainer(
                  width: 130,
                  height: 130,
                  duration: const Duration(milliseconds: 350),
                  decoration: BoxDecoration(
                    color: table[2][2],
                    border: Border.all(color: Colors.black45),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: end,
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black26),
                ),
                onPressed: (){
                  setState(() {
                    newGame();
                    end = false;
                  });
                },
                child: const Text(
                  'Play again!',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
