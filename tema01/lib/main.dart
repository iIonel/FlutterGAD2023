import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _app(),
    );
  }
}

// ignore: camel_case_types
class _app extends StatefulWidget {
  const _app();

  @override
  State<_app> createState() => _appState();
}

// ignore: camel_case_types
class _appState extends State<_app> {
  final TextEditingController _text = TextEditingController();
  bool _empty = true;
  double _euro = 0, _lei = 0;
  bool _screen = false;

  bool numeric(String s) {
    // ignore: unnecessary_null_comparison
    if (s == null) {
      return false;
    }
    // ignore: prefer_final_locals
    double? number = double.tryParse(s);
    if (number == null) {
      return false;
    } else if (number > 0) {
      return true;
    } else {
      return false;
    }
  }

  String? get _error {
    _empty = false;
    final String text = _text.value.text;
    if (numeric(text)) {
      return null;
    }
    if (text.isNotEmpty) {
      return 'please enter a number';
    } else if (numeric(text)) {
      return null;
    } else if (text.isEmpty) {
      return null;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Currency convertor',
            textAlign: TextAlign.left,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Image(
            image: AssetImage('assets/images/money.jpg'),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: _text,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter the amount in EUR',
                border: const UnderlineInputBorder(
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
            onPressed: () {
              setState(() {
                if (_empty == false && _error == null) {
                  _euro = double.tryParse(_text.value.text)!;
                  // ignore: prefer_final_locals
                  double leiParse = _euro * 4.5;
                  _lei = double.parse(leiParse.toStringAsFixed(2));
                  //print('$_lei RON');
                  _screen = true;
                } else {
                  _screen = false;
                }
              });
            },
            child: const Text(
              'CONVERT!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
              child: _screen
                  ? Text(
                      '$_lei RON',
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 40,
                      ),
                    )
                  : const Text(
                      '',
                    ))
        ],
      ),
    );
  }
}
