import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '버튼의 종류',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TestButton 생성
            TextButton(
              onPressed: (){},
              //길게 눌렀을때의 이벤트 발생
              onLongPress: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Text Button'),
                      duration: Duration(seconds: 1),
                      ));
              },
              style: TextButton.styleFrom( //이와 같이 따로 버튼 스타일을 불러와야함
                primary: Colors.blueGrey, //primary속성은 버튼의 글씨색을 의미
                //backgroundColor: Colors.green,
              ),
                child: const Text('Text button',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
            ),

            //ElevatedButton 생성
            ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Elevated Button'),
                      duration: Duration(seconds: 1),
                      ));

                },
                child: Text('Elevated button',style: TextStyle(fontSize: 20.0),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,//여기서 primary속성은 버튼의 배경색을 의미
                  //버튼의 둥글기를 설정
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0 //경계선 제거
                ),
            ),

            //OutlinedButton 생성
            OutlinedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Outlined Button'),
                      duration: Duration(seconds: 1),
                      ));
                },
                child: Text('OutlinedButton',style: TextStyle(fontSize: 20.0),),
              style: OutlinedButton.styleFrom(
                primary: Colors.black, //primary속성을 버튼 글씨색을 의미
                side: BorderSide( //테투리의 색깔 및 두께 지정 가능
                  color: Colors.red,
                  width: 5.0
                ),
              ),
            ),

            //TextButton.icon 생성
            ElevatedButton.icon(
                onPressed: null, // --> null값을 넣으면 버튼 비활성화
                //비활성화된 버튼의 색상은 onSurface로 수정 가능
                icon: Icon( //버튼의 아이콘 속성들
                  Icons.home,
                  size: 30.0,
                  color: Colors.black,
                ),
                label: Text('Go to home'),
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  minimumSize: Size(200, 100), //버튼의 크기 설정
                ),
            ),

            //버튼들을 묶어서 정렬이 가능한 ButtonBar 생성
            ButtonBar(
              //ButtonBar의 속성을 통하여 정렬 가능
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('보내기'),
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('취소'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

