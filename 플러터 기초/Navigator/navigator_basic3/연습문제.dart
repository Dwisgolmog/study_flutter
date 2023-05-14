import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //Builder를 통하여 BuildContext를 선언하지 않을시 오류가 발생함
      //왜냐하면 모든 위젯은 MaterialApp을 감싸고 있어야 하지만 Builder가 없다면
      //가장 가까운 BuildContext는 MaterialApp밖에 있으므로 push가 되지 않음

      home: Builder(
        builder: (BuildContext ctx){
          return Center(
            child: ElevatedButton(
              child: Text('Go to Screen A'),
              onPressed: (){
                Navigator.push(ctx, MaterialPageRoute(
                    builder: (ctx) => ScreenA()));
              },
            ),
          );
        },
      )
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Screen A'
        ),
      ),
      body: Center(
        child: Text('Hi, there!'),
      ),
    );
  }
}








