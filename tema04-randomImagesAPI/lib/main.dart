import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:http/http.dart';

void main() {
  runApp(randomApi());
}

class randomApi extends StatelessWidget {
  const randomApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _randomApi(),
    );
  }
}

class _randomApi extends StatefulWidget {
  const _randomApi({Key? key}) : super(key: key);

  @override
  State<_randomApi> createState() => _randomApiState();
}

class _randomApiState extends State<_randomApi> {
  TextEditingController _text = new TextEditingController();
  int size = 0;
  List<Map<dynamic,dynamic>> allList = [];
  List<String> pictures = [];

  @override
  void initState(){
    super.initState();
  }

  void takeInformations() async{

    if(pictures.isNotEmpty)
      pictures.clear();

    if(allList.isNotEmpty)
      allList.clear();

    size = 0;
    size = int.parse(_text.text);
    String url = 'https://api.unsplash.com/photos/random?count=$size&client_id=ClSY0Ge2qY2oUBtghWTlhlXd9s0yAIWVmAFfJ0UbOxM';
    Uri uri = Uri.parse(url);
    print(uri);
    Response response = await get(uri);
    allList = jsonDecode(response.body) as List<Map<dynamic,dynamic>>;

    for(int i = 0; i < allList.length; ++i){
      Map<String,dynamic> item = allList[i] as Map<String,dynamic>;
      Map<String,String> urls = item['urls'] as Map<String,String>;
      String? currentPicture = urls['regular'];
      pictures.add(currentPicture!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Random Images API',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'enter the number of Images'
                  ),
                  controller: _text,
                  keyboardType: TextInputType.number,
                ),
              ),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.black26),
                  ),
                  onPressed: (){
                    setState(() {

                      takeInformations();
                    });
                  },
                  child: Text(
                    'Random',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:100,right: 8.0,left: 8.0),
            child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:[
                  for(int i = 0; i < size; ++i)
                    if(size > 0)
                      Container(
                        width: 160,
                        child: Image.network(
                          pictures[i],
                        ),
                      ),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}


