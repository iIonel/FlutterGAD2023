import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tema05/models/picture.dart';

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
  List<Picture> _images = <Picture>[];
  final ScrollController _controller = new ScrollController();
  int _page = 1;
  bool _isLoading = false;

  @override
  void initState(){
    super.initState();
    _controller.addListener(_onScroll);
  }

  void _onScroll(){
    final double offset = _controller.position.pixels;
    final double maxScrollExtent = _controller.position.maxScrollExtent;
    final double height = MediaQuery.of(context).size.height;
    if(!_isLoading && maxScrollExtent - offset < 3 * height){
      _page++;
      takeInformations(page: _page);
    }
  }

  Future<void> takeInformations({String? search,required int page}) async {
    setState(() {
      _isLoading = true;
      if (_page == 1)
        _images.clear();
    });
    String? query = search;
    Uri uri = Uri.parse(
        'https://api.unsplash.com/search/photos?query=$query&per_page=30&page=$page&client_id=8WjK2yVLo44CSuJt9b63wmIcYrb3DStxEZOBEGQAT3Y');
    Response response = await get(uri);
    Map<String, dynamic> resultsSearch = jsonDecode(response.body) as Map<String, dynamic>;
    List<dynamic> resultsImages = resultsSearch['results'] as List<dynamic>;
    setState(() {
      _images.addAll(
          resultsImages.cast<Map<dynamic, dynamic>>().map((Map<dynamic, dynamic> json) => Picture.fromJson(json)));
      _isLoading = false;
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
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
                  takeInformations(search: _text.toString(),page: 1);
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
      body:Padding(
        padding: const EdgeInsets.only(right: 10,left: 10),
        child: GridView.builder(
          controller: _controller,
          itemCount: _images.length,
          itemBuilder: (BuildContext context, int index){
            final Picture picture = _images[index];
            return Stack(
              fit: StackFit.expand,
              children: <Widget>[
                GridTile(
                  child: Image.network(
                    picture.urls.regular,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                            picture.user.profileImages.small,
                          ),
                        ),
                      ),
                      Text(
                        picture.user.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: AlignmentDirectional.bottomCenter,
                            end: AlignmentDirectional.topCenter,
                            colors: [
                              Colors.black54,
                              Colors.transparent,
                            ]
                        )
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.heart_broken_rounded,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          picture.likes.toString(),
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.69,
          ),
        ),
      ),
    );
  }
}

