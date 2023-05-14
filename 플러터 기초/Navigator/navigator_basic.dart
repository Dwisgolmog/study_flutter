import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext contextFirst) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to SecondPage'),
          onPressed: () {
            //첫번째 화면을 제거하고 보여주는것x
            //첫번째 페이지위에 두번째 페이지를 쌓는 형식임
            //현재 페이지의 위치 정보를 알기 위해서 context값이 필요함
            //-> 그래야 그 페이지 위에 쌓을수 있기 때문
            Navigator.push(contextFirst, MaterialPageRoute(
                builder: (contextFirst) => SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctxSecond) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to FirstPage'),
          onPressed: () {
            //pop할때는 바로 불러오면 됨
            Navigator.pop(ctxSecond);
          },
        ),
      ),
    );
  }
}


