import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/picture.dart';

void main() {
  runApp(const UnsplashApi());
}

class UnsplashApi extends StatelessWidget {
  const UnsplashApi({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      home: const _UnsplashApi(),
    );
  }
}

class _UnsplashApi extends StatefulWidget {
  const _UnsplashApi();

  @override
  State<_UnsplashApi> createState() => _UnsplashApiState();
}

class _UnsplashApiState extends State<_UnsplashApi> {
  final TextEditingController _text = TextEditingController();
  final List<Picture> _images = <Picture>[];
  final ScrollController _controller = ScrollController();
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
      if (_page == 1) {
        _images.clear();
      }
    });
    final String? query = search;
    final Uri uri = Uri.parse(
        'https://api.unsplash.com/search/photos?query=$query&per_page=30&page=$page&client_id=8WjK2yVLo44CSuJt9b63wmIcYrb3DStxEZOBEGQAT3Y');
    final Response response = await get(uri);
    final Map<String, dynamic> resultsSearch = jsonDecode(response.body) as Map<String, dynamic>;
    final List<dynamic> resultsImages = resultsSearch['results'] as List<dynamic>;
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
              onSubmitted: (String text){
                setState(() {
                  takeInformations(search: text,page: 1);
                });
              },
              decoration: const InputDecoration(
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
                      Opacity(
                        opacity: 0.6,
                        child: ColoredBox(
                          color: Colors.white,
                          child: Text(
                            picture.user.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: AlignmentDirectional.bottomCenter,
                            end: AlignmentDirectional.topCenter,
                            colors: <Color>[
                              Colors.black54,
                              Colors.transparent,
                            ]
                        )
                    ),
                    child: Row(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.heart_broken_rounded,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          picture.likes.toString(),
                          style: const TextStyle(
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
