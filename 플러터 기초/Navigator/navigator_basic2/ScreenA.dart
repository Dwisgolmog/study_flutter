import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/B');
                },
                child: Text('Go to Screen B'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/C');
              },
              child: Text('Go to Screen C'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
