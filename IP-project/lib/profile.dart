import 'dart:ui';
import 'package:universal_io/io.dart';
import 'package:flutter/material.dart';
import 'package:ip_project/main.dart';

void main(){
  runApp(profile());
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _profile(),
    );
  }
}

class _profile extends StatefulWidget {
  const _profile({Key? key}) : super(key: key);

  @override
  State<_profile> createState() => _profileState();
}

class _profileState extends State<_profile> {

  TextEditingController _nume = TextEditingController();
  TextEditingController _prenume = TextEditingController();
  TextEditingController _numartelefon = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _adresa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Setting Account Profile',
      home: Scaffold(
        backgroundColor: Color(0xFF293441),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        title: GestureDetector(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new app())),
          child: Image.asset(
              'assets/images/back.png',
              width: 35,
            ),
        ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                width: 500,
                alignment: AlignmentDirectional.center,
                child: Text(
                  'Date personale',
                  style: TextStyle(
                    fontFamily: 'Louis George Cafe',
                    color: Color(0xFFe5e7e8),
                    fontSize: 35,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(top: 20,left: 10),
                child: Text(
                  'Nume',
                  style: TextStyle(
                    fontFamily: 'Louis George Cafe',
                    color: Color(0xFFe5e7e8),
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: TextField(
                  style: TextStyle(color: Color(0xFFe5e7e8)),
                  controller: _nume,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF101c2b),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Text(
                  'Prenume',
                  style: TextStyle(
                    fontFamily: 'Louis George Cafe',
                    color: Color(0xFFe5e7e8),
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: TextField(
                  style: TextStyle(color: Color(0xFFe5e7e8)),
                  controller: _prenume,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF101c2b),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Text(
                  'Numar telefon',
                  style: TextStyle(
                    fontFamily: 'Louis George Cafe',
                    color: Color(0xFFe5e7e8),
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: TextField(
                  style: TextStyle(color: Color(0xFFe5e7e8)),
                  controller: _numartelefon,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF101c2b),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Text(
                  'E-mail',
                  style: TextStyle(
                    fontFamily: 'Louis George Cafe',
                    color: Color(0xFFe5e7e8),
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: TextField(
                  style: TextStyle(color: Color(0xFFe5e7e8)),
                  controller: _email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF101c2b),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(top: 10,left: 10),
                child: Text(
                  'Adresa',
                  style: TextStyle(
                    fontFamily: 'Louis George Cafe',
                    color: Color(0xFFe5e7e8),
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: TextField(
                  style: TextStyle(color: Color(0xFFe5e7e8)),
                  controller: _adresa,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF101c2b),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:30),
                child: TextButton(
                    onPressed: (){
                      print('NUME: $_nume ');
                      print('PRENUME: $_prenume');
                      print('NUMAR TELEFON: $_numartelefon');
                      print('E-MAIL: $_email');
                      print('ADRESA: $_adresa');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF896f4e)),
                    ),
                    child: Text(
                      'Salveaza',
                      style: TextStyle(
                        fontFamily: 'Louis George Cafe',
                        color: Color(0xFFe5e7e8),
                        fontSize: 25,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

