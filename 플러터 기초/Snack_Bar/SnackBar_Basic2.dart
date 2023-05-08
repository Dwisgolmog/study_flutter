import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('show me'),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('hello',
          //스낵바 안에 있는 글씨를 가운데로 배치 후 글씨 색을 한얀색으로 변경
          textAlign: TextAlign.center,
            style: TextStyle( color: Colors.white),
          ),
          //스낵바의 배경색을 teal로 설정
          backgroundColor: Colors.teal,
            //스낵바의 보여지는 시간 설정(1000밀리세컨드로 설정)
            duration: Duration(microseconds: 1000),
          ));
        },
      ),
    );
  }
}




