import 'dart:ui';
import 'package:universal_io/io.dart';
import 'package:flutter/material.dart';
import 'package:ip_project/profile.dart';

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
}bool _homeAction = false;
bool _institutieAction = false;
bool _contactAction = false;
bool _contumeuAction = false;


class _app extends StatefulWidget {
  const _app({Key? key}) : super(key: key);

  @override
  State<_app> createState() => _appState();
}

class _appState extends State<_app> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account Page',
      home: Scaffold(
        backgroundColor: Color(0xFF101c2b),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'Salut, Prenume Nume!',
              style: TextStyle(
                fontFamily: 'Book Antiqua Font',
                fontSize: 25,
                color: Color(0xFFe5e7e8),
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/city.png',
                  height: 130,
                  width: 500,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.only(top:100, bottom: 10),
                  child: Container(
                    width: 500,
                    height: 490,
                    decoration: BoxDecoration(
                      color: Color(0xFF293441),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Contul meu',
                            style: TextStyle(
                              fontSize: 35,
                              color: Color(0xFFe5e7e8),
                              fontFamily: 'Louis George Cafe',
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFe5e7e8),
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => new profile())),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 20, left: 10),
                                  child: Image.asset(
                                    'assets/images/date_personale.png',
                                    width: 75,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top:15, left: 0),
                                  child: Text(
                                    'Date personale',
                                    style: TextStyle(
                                      color: Color(0xFFe5e7e8),
                                      fontFamily: 'Louis George Cafe',
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top:15, left: 70),
                                  child: Image.asset(
                                    'assets/images/next.png',
                                    width: 35,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFe5e7e8),
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 18, left: 10),
                                child: Image.asset(
                                  'assets/images/istoricul_cautarilor.png',
                                  width: 75,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 0),
                                child: Text(
                                  'Istoricul cautarilor',
                                  style: TextStyle(
                                    color: Color(0xFFe5e7e8),
                                    fontFamily: 'Louis George Cafe',
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 30),
                                child: Image.asset(
                                  'assets/images/next.png',
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFe5e7e8),
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Image.asset(
                                  'assets/images/schimbare_parola.png',
                                  width: 75,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 0),
                                child: Text(
                                  'Schimbare parola',
                                  style: TextStyle(
                                    color: Color(0xFFe5e7e8),
                                    fontFamily: 'Louis George Cafe',
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 33),
                                child: Image.asset(
                                  'assets/images/next.png',
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFe5e7e8),
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Image.asset(
                                  'assets/images/document_in_decurs.png',
                                  width: 70,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 0),
                                child: Text(
                                  'Document in decurs',
                                  style: TextStyle(
                                    color: Color(0xFFe5e7e8),
                                    fontFamily: 'Louis George Cafe',
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 10),
                                child: Image.asset(
                                  'assets/images/next.png',
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xFFe5e7e8),
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Image.asset(
                                  'assets/images/deconectare.png',
                                  width: 75,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 0),
                                child: Text(
                                  'Deconectare',
                                  style: TextStyle(
                                    color: Color(0xFFe5e7e8),
                                    fontFamily: 'Louis George Cafe',
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top:15, left: 100),
                                child: Image.asset(
                                  'assets/images/next.png',
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    _homeAction = !_homeAction;
                  });
                },
                child: Container(
                    child: _homeAction?
                    Image.asset(
                      'assets/images/home2.png',
                      width: 45,
                    ):
                    Image.asset(
                      'assets/images/home1.png',
                      width: 45,
                    ),
                  ),
              ),

              GestureDetector(
                onTap: (){
                  setState(() {
                    _institutieAction = !_institutieAction;
                  });
                },
                child: Container(
                  child:  _institutieAction?
                  Image.asset(
                    'assets/images/institutie2.png',
                    width: 45,
                  ):
                  Image.asset(
                    'assets/images/institutie1.png',
                    width: 45,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _contactAction = !_contactAction;
                  });
                },
                child: Container(
                  child: _contactAction?
                  Image.asset(
                    'assets/images/contact2.png',
                    width: 45,
                  ):
                  Image.asset(
                    'assets/images/contact1.png',
                    width: 45,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _contumeuAction = !_contumeuAction;
                  });
                },
                child: Container(
                  child: _contumeuAction?
                  Image.asset(
                    'assets/images/contul_meu2.png',
                    width: 45,
                  ):
                  Image.asset(
                    'assets/images/contul_meu1.png',
                    width: 45,
                  ),
                ),
              ),
            ],
          ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'Louis George Cafe',
                      color: Color(0xFFe5e7e8),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 55),
                  child: Text(
                    'Institutie',
                    style: TextStyle(
                      fontFamily: 'Louis George Cafe',
                      color: Color(0xFFe5e7e8),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 47),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontFamily: 'Louis George Cafe',
                      color: Color(0xFFe5e7e8),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    'Contul meu',
                    style: TextStyle(
                      fontFamily: 'Louis George Cafe',
                      color: Color(0xFFe5e7e8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}