import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyName",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //앱바 생성 및 배경색 green[400]으로 지정
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text('This is Me!'),
        backgroundColor: Colors.green[800],
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //나의 사진 가운데에 생성
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('image/나.jpeg'),
                radius: 60.0,
              ),
            ),
            //중간 줄
            Divider(
              height: 60.0,
              color: Colors.green[200],
              thickness: 2,
              endIndent: 30.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            //이름 및 프로그래밍 레벨 텍스트
            const Text('NAME',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('KimDongHyun',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text('Programing-Level',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('50/100',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            //체크 아이콘 생성 및 사용 가능한 언어 텍스트로 생성
            Row(
              children: const <Widget> [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using C programing',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget> [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using Java',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget> [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using web Programing',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            //마지막 gif 오구 그림 생성
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('image/ogu.jpeg'),
                radius: 40.0,
                backgroundColor: Colors.green[400],
              ),
            )
          ],
        ),
      )
    );
  }
}


