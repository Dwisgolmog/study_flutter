import 'package:exam01/FirstApp.dart';
import 'package:exam01/secondApp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabber Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with  SingleTickerProviderStateMixin{
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar Example'),
      ),
      body: TabBarView(
        children: [FirstApp(),SecondApp()],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(icon: Icon(Icons.looks_one,color: Colors.blue,),),
          Tab(icon: Icon(Icons.looks_two,color: Colors.blue,),)
        ], controller: controller,
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 2,vsync: this);
  }

  @override
  void dispose(){
    controller!.dispose();
    super.dispose();
  }
}

