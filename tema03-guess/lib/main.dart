import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _app(),
    );
  }
}

class _app extends StatefulWidget {
  const _app({Key? key}) : super(key: key);

  @override
  State<_app> createState() => _appState();
}

class _appState extends State<_app> {
  double _takeNumber = 0;
  double _sizeForText = 0;
  final TextEditingController _text = TextEditingController();
  int _numberFromText = 0;
  int _guessNumber = 0;
  bool _goodCheck = false;

  @override
  void initState(){
    super.initState();
    generateNumber();
  }

  Future<void> generateNumber() async{
    Random random = new Random();
    _guessNumber = 1 + random.nextInt(100-1);
  }

  void generateNumberAgain(){
    Random random = new Random();
    _takeNumber = 0;
    _sizeForText = 0;
    _numberFromText = 0;
    _goodCheck = false;
    _guessNumber = 1 + random.nextInt(100-1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: AlignmentDirectional.center,
          child: Text(
            'Guess my number',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:15.0 ,left:20 ,right:20),
              child: Text(
                textAlign: TextAlign.center,
                "I'm thinking of a number between 1 and 100",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0 ,left:20 ,right:20),
              child: Text(
                textAlign: TextAlign.center,
                "It's your turn to guess my number!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Opacity(
              opacity: _takeNumber,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: Text(
                      'You tried $_numberFromText',
                      style: TextStyle(
                        fontSize: _sizeForText,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      if(_guessNumber == _numberFromText)...[
                        Text(
                          textAlign: TextAlign.center,
                          'You guessed right.',
                          style: TextStyle(
                            fontSize: _sizeForText,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                      if(_guessNumber > _numberFromText)...[
                        Text(
                          'Try higher',
                          style: TextStyle(
                            fontSize: _sizeForText,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                      if(_guessNumber < _numberFromText) ...[
                        Text(
                          'Try lower',
                          style: TextStyle(
                            fontSize: _sizeForText,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Container(
                width: 350,
                height: 200,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:15),
                        child: Text(
                          'Try a number!',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20 ,right:15 ,left:15),
                        child: TextField(
                          controller: _text,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Container(
                          width: 100,
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.black26),
                              ),
                              onPressed: (){
                                setState(() {
                                  if(_goodCheck == false) {
                                    //print(_guessNumber);
                                    _takeNumber = 1;
                                    _numberFromText = int.parse(_text.text);
                                    _sizeForText = 40;

                                    if (_guessNumber == _numberFromText) {
                                      _goodCheck = true;
                                    }
                                  }
                                  else{
                                    showAlert(context,_guessNumber);
                                    generateNumberAgain();
                                  }
                                });
                              },
                              child: Container(
                                child: _goodCheck
                                ?Text(
                                  'Reset',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )
                                :Text(
                                  'Guess',
                                  style: TextStyle(
                                  color: Colors.black,
                                  ),
                                ),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlert(BuildContext context,int number) {
  Widget button = TextButton(

      onPressed: (){
        Navigator.of(context).pop();
      },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            'Try Again!',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'OK',
          ),
        ),
      ],
    )
  );

  AlertDialog alert = AlertDialog(
    title: Text("You guessed right"),
    content: Text("It was $number"),
    actions: [
      button,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}