import 'package:flutter/material.dart';
//fluttertoast를 import 하기 위해 pubspec.yaml에도 fluttertoast코드를 추가해야함
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast',
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
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //해당 클래스를 불러옴
            flutterToast();
          },
          child: Text('Toast'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      )
    );
  }
}

//fluttertoast를 보여주는 클래스로써 여러가지 커스터 마이징을 함
void flutterToast(){
  Fluttertoast.showToast(msg: 'Flutter',
  //밑에서 나옴
  gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    //나오는 시간
    toastLength: Toast.LENGTH_SHORT
  );
}



