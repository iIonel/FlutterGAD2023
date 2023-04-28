import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(UnsplashApi());
}

class UnsplashApi extends StatelessWidget {
  const UnsplashApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      home: const _UnsplashApi(),
    );
  }
}

class _UnsplashApi extends StatefulWidget {
  const _UnsplashApi({Key? key}) : super(key: key);

  @override
  State<_UnsplashApi> createState() => _UnsplashApiState();
}

class _UnsplashApiState extends State<_UnsplashApi> {

  TextEditingController _text = new TextEditingController();
  bool _isGoodText = false;
  List<String> urlImages = <String>[];

  @override
  void initState(){
    super.initState();
  }

  Future<void> takeInformations(String search) async{
    urlImages.clear();
    String query = search;
    Uri uri = Uri.parse('https://api.unsplash.com/search/photos?query=$query&client_id=8WjK2yVLo44CSuJt9b63wmIcYrb3DStxEZOBEGQAT3Y');
    Response response = await get(uri);
    print(query);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _text,
              onSubmitted: (_text){
                setState(() {
                  if(_text != ''){
                    _isGoodText = true;
                  }
                  else{
                    _isGoodText = false;
                  }

                  if(_isGoodText == true){
                    takeInformations(_text.toString());
                  }
                });
              },
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
    );
  }
}

