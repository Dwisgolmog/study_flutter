import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HttpApp(),
    );
  }
}

class HttpApp extends StatefulWidget {
  const HttpApp({Key? key}) : super(key: key);

  @override
  State<HttpApp> createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  String result = '';
  List? data;
  TextEditingController? _editingController;
  int page = 1;
  ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: TextField(
          controller: _editingController,
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(hintText: 'Please enter a serach term'),
        )
    ),
    body: Container(
      child: Center(
        child: data!.length == 0
        ? Text('The data is not available',style: TextStyle(fontSize: 20),textAlign: (TextAlign.center),)
        : ListView.builder(
        itemBuilder: (context,index){
          return Card(
            child: Container(
              child: Row(
                children: [
                  Image.network(
                    data![index]['thumbnail'],
                    height: 90,
                    width: 90,
                    fit: BoxFit.contain,
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Text(
                          data![index]['title'].toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(data![index]['title'].toString()),
                      Text(data![index]['authors'].toString()),
                      Text(data![index]['sale_price'].toString()),
                      Text(data![index]['status'].toString()),
                    ],
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              )
            ),
          );
        },
        itemCount: data!.length,
          controller: _scrollController,
        ),
      ),
    ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            page = 1;
            data!.clear();
            getJSONData();
          },
          child: Icon(Icons.file_download),
        )
    );
  }

  Future<String> getJSONData() async {
    var url = "https://dapi.kakao.com/v3/search/book?target=title&page=$page&query=${_editingController!.value.text}";
    var reponse = await http.get(Uri.parse(url),
        headers: {"Authorization": "KakaoAK 6b7b1106d16b15afae652fdb740d743f"});
    setState(() {
      var dataConvertedToJson = json.decode(reponse.body);
      List result = dataConvertedToJson['documents'];
      data!.addAll(result);
    });
    return reponse.body;
  }

  @override
  void initState() {
    super.initState();

    data = new List.empty(growable: true);
    _editingController = new TextEditingController();
    _scrollController = new ScrollController();

    _scrollController!.addListener(() {
      if(_scrollController!.offset >=
          _scrollController!.position.maxScrollExtent &&
          !_scrollController!.position.outOfRange){
        print('bottom');
        page++;
        getJSONData();
      }
    });

  }
}
