import 'package:flutter/material.dart';
import 'package:netflix/screen/fuel.dart';
import 'package:netflix/screen/map.dart';
import 'package:netflix/screen/report.dart';
import 'package:netflix/screen/setting.dart';
import 'package:netflix/screen/status.dart';
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
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),
      home: DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(), // 손으로 스와이프 방지
              children: [
                Container(child: Center(child: Status())),
                Container(child: Center(child: Report())),
                Container(child: Center(child: Fuel())),
                Container(child: Center(child: MapPage())),
                Container(child: Center(child: Setting())),
              ],
            ),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                    color: Color(0xff878585),
                    border:
                        Border(top: BorderSide(color: Color(0xff878585), width: 1.0))),
                child: Bottom()),
          ),
        ),
      ),
    );
  }
}
