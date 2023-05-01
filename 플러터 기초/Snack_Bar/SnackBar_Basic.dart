import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
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
      body: Center(
        //ElevateButton형식의 버튼 생성
        child: ElevatedButton(
          //버튼 스타일 설정
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          //버튼의 텍스트
          child: const Text(
            'Show me',
            //텍스트 스타일
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
          //버튼 눌렀을시의 이벤트
          onPressed: () {
            //ScaffoldMessenger를 통하여 스낵바를 구현
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Hellow')));
          },
        ),
      ),
    );
  }
}
