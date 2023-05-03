import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final TextEditingController _number = TextEditingController();
  String _option = '';

  bool isSquare(int number) {
    // ignore: prefer_final_locals
    double square = sqrt(number);
    if (number == square.toInt() * square.toInt()) {
      return true;
    }
    return false;
  }

  bool isTriangle(int number) {
    for (int i = 0; i < sqrt(number); ++i) {
      if (i * i * i == number) {
        return true;
      }
    }
    return false;
  }

  bool isNeither(int number) {
    if (isTriangle(number) == false && isSquare(number) == false) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Number Shapes',
          )),
        ),
        body: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(15),
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
                      // ignore: always_specify_types
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 550, left: 300),
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          // ignore: prefer_final_locals
                          int numberFromText = int.parse(_number.text);
                          if (isTriangle(numberFromText) == true && isSquare(numberFromText) == false) {
                            _option = 'triangle';
                          } else if (isSquare(numberFromText) == true && isTriangle(numberFromText) == false) {
                            _option = 'square';
                          } else if (isNeither(numberFromText) == true) {
                            _option = 'neither';
                          } else {
                            _option = 'either';
                          }
                          showAlert(context, numberFromText, _option);
                        });
                      },
                      tooltip: 'take number',
                      child: const Icon(Icons.check),
                    ),
                  ),
                ],
              ),
            )));
  }
}

// ignore: always_declare_return_types
showAlert(BuildContext context, int number, String option) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Builder(
        builder: (BuildContext context) {
          final double height = MediaQuery.of(context).size.height;
          final double width = MediaQuery.of(context).size.width;
          return SizedBox(
            height: height - 750,
            width: width - 100,
            child: Column(
              children: <Widget>[
                Text(
                  '$number',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    // ignore: always_specify_types
                    children: [
                      // ignore: always_specify_types
                      if (option == 'square') ...[
                        Text(
                          'Number $number is SQUARE',
                        ),
                      ]
                      // ignore: always_specify_types
                      else if (option == 'triangle') ...[
                        Text(
                          'Number $number is TRIANGLE',
                        ),
                      ]
                      // ignore: always_specify_types
                      else if (option == 'neither') ...[
                        Text(
                          'Number $number is neither SQUARE and TRIANGLE',
                        ),
                      ]
                      // ignore: always_specify_types
                      else if (option == 'either') ...[
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
