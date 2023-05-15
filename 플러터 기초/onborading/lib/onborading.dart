import 'package:flutter/material.dart';
import 'package:exam02/main.dart';
import 'package:introduction_screen/introduction_screen.dart';
//pub.dev에서 introduction_screen import함 (pubspec.yaml에도 추가해야함)

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        //각페이지의 위젯을 담당할 PageViewModel 생성
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the first page',
          image: Image.asset('img/page1.png'),
          decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the first page',
            image: Image.asset('img/page2.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the first page',
            image: Image.asset('img/page3.png'),
            decoration: getPageDecoration()
        ),
      ],
      //onboarding이 끝났을때 무엇을 해야할지를 지정
      done: const Text('done'),
      onDone: (){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyPage()),
        );
      },
      //다음 버튼의 아니콘 지정
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true, //skip버튼 생성
      skip: const Text('skip'),
      //페이지 점 스타일 지정
      dotsDecorator: DotsDecorator(
        color: Colors.black,
        size: const Size(10,10),
        activeSize: Size(22,10),
        activeShape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24)
        )
      ),
      curve: Curves.bounceOut, //애니메이션 효과 주기
    );
  }
  //PageDecoration을 설정하는 메소드
  PageDecoration getPageDecoration(){
    return PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.lightBlue,
    );
  }
}
