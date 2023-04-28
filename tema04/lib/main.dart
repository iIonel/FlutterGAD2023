import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(RandomApi());
}

class RandomApi extends StatelessWidget {
  const RandomApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _RandomApi(),
    );
  }
}

class _RandomApi extends StatefulWidget {
  const _RandomApi({Key? key}) : super(key: key);

  @override
  State<_RandomApi> createState() => _RandomApiState();
}

class _RandomApiState extends State<_RandomApi> {
  List<dynamic> allList = [];
  List<String> pictures = [];

  @override
  void initState(){
    super.initState();
    takeInformations();
  }

  Future<void> takeInformations() async{
    String url = 'https://api.unsplash.com/photos/random?count=30&client_id=ClSY0Ge2qY2oUBtghWTlhlXd9s0yAIWVmAFfJ0UbOxM';
    Uri uri = Uri.parse(url);
    Response response = await get(uri);
    allList = jsonDecode(response.body) as List<dynamic>;

    for(int i = 0; i < allList.length; ++i){
      Map<String,dynamic> item = allList[i] as Map<String,dynamic>;
      Map<String,dynamic> urls = item['urls'] as Map<String,dynamic>;
      String? currentPicture = urls['regular'];
      pictures.add(currentPicture!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Random Images Generator',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Container(
              height: 500,
              child: ListView(
                children: [
                  for(int i = 0; i < allList.length; ++i)
                    Container(
                      width: 300,
                      height: 300,
                      child: Image.network(
                        pictures[i],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

