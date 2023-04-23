import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController _number = TextEditingController();
  String _option = '';

  bool isSquare(int number){
    double square = sqrt(number);
    if(number == square.toInt()*square.toInt())
      return true;
    return false;
  }

  bool isTriangle(int number){
   for(var i = 0; i < sqrt(number); ++i){
     if(i * i * i == number)
       return true;
   }
    return false;
  }

  bool isNeither(int number){
    if(isTriangle(number) == false && isSquare(number) == false)
        return true;
    return false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                'Number Shapes',
            )
        ),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {

          });
        },
        child: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Please input a number to see if it is square or triangular.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                  controller: _number,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 300),
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    if(_number != null) {
                      int numberFromText = int.parse(_number.text);
                      if(isTriangle(numberFromText) == true && isSquare(numberFromText) == false){
                        _option = 'triangle';
                      }
                      else if(isSquare(numberFromText) == true && isTriangle(numberFromText) == false){
                        _option = 'square';
                      }
                      else if(isNeither(numberFromText) == true){
                        _option = 'neither';
                      }
                      else{
                        _option = 'either';
                      }
                      showAlert(context,numberFromText,_option);
                    }
                  });
                  },
                tooltip: 'take number',
                child: Icon(Icons.check),
              ),
            ),
            ],
          ),
        )
      )
    );
  }
}

showAlert(BuildContext context,int number, String option) {

  showDialog(
      context: context,
      builder: (_) => new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.all(Radius.circular(10.0))
      ),
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;
          return Container(
            height: height - 750,
            width: width - 100,
            child: Column(
              children: <Widget>[
                Text(
                  '$number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20),
                  child: Column(
                    children: [
                      if(option == 'square')...[
                        Text(
                          'Number $number is SQUARE',
                        ),
                      ]
                      else if(option == 'triangle')...[
                        Text(
                          'Number $number is TRIANGLE',
                        ),
                      ]
                      else if(option == 'neither')...[
                          Text(
                            'Number $number is neither SQUARE and TRIANGLE',
                          ),
                        ]
                        else if(option == 'either')...[
                            Text(
                              'Number $number is both SQUARE and TRIANGLE',
                            ),
                          ]
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}