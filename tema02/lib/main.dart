import 'dart:ffi';
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
  bool _visible = false;


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                'Number Shapes'
            )
        ),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
           if(_visible == true)
             _visible = false;
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
              padding: const EdgeInsets.only(top:100),
              child: Visibility(
                visible: _visible,
                child: Container(
                  color: Colors.yellow,
                  width: 300,
                  height: 100,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6,right: 16,left: 16,bottom: 16),
                        child: Text(
                          'Number',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !_visible,
              child: Padding(
                padding: const EdgeInsets.only(top: 330,right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      onPressed: (){
                        setState(() {
                          _visible = true;
                        });
                      },
                      tooltip: 'take number',
                      child: Icon(Icons.check),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}