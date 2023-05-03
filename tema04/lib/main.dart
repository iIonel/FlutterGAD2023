import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const RandomApi());
}

class RandomApi extends StatelessWidget {
  const RandomApi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _RandomApi(),
    );
  }
}

class _RandomApi extends StatefulWidget {
  const _RandomApi();

  @override
  State<_RandomApi> createState() => _RandomApiState();
}

class _RandomApiState extends State<_RandomApi> {
  List<dynamic> allList = <dynamic>[];
  List<String> pictures = <String>[];

  @override
  void initState() {
    super.initState();
    takeInformations();
  }

  Future<void> takeInformations() async {
    const String url =
        'https://api.unsplash.com/photos/random?count=30&client_id=ClSY0Ge2qY2oUBtghWTlhlXd9s0yAIWVmAFfJ0UbOxM';
    final Uri uri = Uri.parse(url);
    final Response response = await get(uri);
    allList = jsonDecode(response.body) as List<dynamic>;

    for (int i = 0; i < allList.length; ++i) {
      final Map<String, dynamic> item = allList[i] as Map<String, dynamic>;
      final Map<String, dynamic> urls = item['urls'] as Map<String, dynamic>;
      final String currentPicture = urls['regular'] as String;
      pictures.add(currentPicture);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Random Images Generator',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 500,
              child: ListView(
                children: <Widget>[
                  for (int i = 0; i < allList.length; ++i)
                    SizedBox(
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
