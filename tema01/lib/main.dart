
import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  TextEditingController _text = TextEditingController();
  bool _empty = true;
  double _euro = 0,_lei = 0;
  bool _screen = false;

  bool numeric(String s){
    if(s == null) {
      return false;
    }
    double? number = double.tryParse(s);
    if(number == null) return false;
    else if(number > 0) return true;
    else
      return false;
  }

  String? get _error{
    _empty = false;
    final text = _text.value.text;
    if(numeric(text))
      return null;
    if(text.isNotEmpty)
      return 'please enter a number';
    else if(numeric(text))
      return null;
    else if(text.isEmpty) {
      return null;
      _empty = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Currency convertor',
            textAlign: TextAlign.left,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
              image: AssetImage('assets/images/money.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _text,
              keyboardType: TextInputType.number,
              obscureText: false,
              decoration: InputDecoration(
                  hintText: 'enter the amount in EUR',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                  ),
                  errorText: _error,
              ),
            ),
          ),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black26),
              ),
              onPressed: (){
                setState(() {
                  if(_empty == false && _error == null){
                    _euro = double.tryParse(_text.value.text)!;
                    double leiParse = _euro * 4.5;
                    _lei = double.parse(leiParse.toStringAsFixed(2));
                    print('$_lei RON');
                    _screen = true;
                  }
                  else _screen = false;
                });
              },
              child: Text(
                'CONVERT!',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
          ),
          Container(
              child: _screen?
              Text(
                '$_lei RON',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 40,
                ),
              ):
              Text(
                '',
              )
          )
        ],
      ),
    );
  }
}



