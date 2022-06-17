import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp()
    // DevicePreview(
    //   enabled: !kReleaseMode, // 디버그 모드에서만 보이게 하기 위해
    //   builder: (context) => const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset('assets/info_bg.png',width: 215 * getScaleWidth(context)),
            color: Colors.amber,
          ),
          Container(
            child: Image.asset('assets/car_f_l.png',width: 141 * getScaleWidth(context)),
            color: Colors.lightBlue,
          )

        ],
      ),
    );
  }
  static double getScaleWidth (BuildContext context){
    var standardDeviceWidth = 360;
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    double pixel = MediaQuery.of(context).devicePixelRatio;
    double paddingTop = MediaQuery.of(context).padding.top;

    var diff = deviceWidth/ standardDeviceWidth;

    print(deviceWidth);
    print(deviceHeight);
    print(pixel);
    print(paddingTop);
    print(diff);

    return diff;
  }
}

