import 'package:exam02/ScreenC.dart';
import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //홈페이지의 첫 페이지가 index.html 이듯 플러터는 첫 라우터 이름을 "/"로 지정되어있음
      initialRoute: '/', //--> 처음 출력될 라우터
      //Map 자료구조 <String, WidgetBuilder>
      routes: {
        '/' : (context) => ScreenA(), //key 값인 /를 부르면 value값인 ScreenA()가 빌드됨
        '/B' : (context) => ScreenB(),
        '/C' : (context) => ScreenC(),
      },
    );
  }
}







