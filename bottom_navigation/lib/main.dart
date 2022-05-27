import 'package:flutter/material.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nexflix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),// 손으로 스와이프 방지
            children: [
              Container(child: Center(child: Text('home'))),
              Container(child: Center(child: Text('search'))),
              Container(child: Center(child: Text('save'))),
              Container(child: Center(child: Text('more')))
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
