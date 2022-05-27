import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Toast message')),
        body: Center(
          child: FlatButton(
            onPressed: () {
              flutterToast();
            },
            child: Text('Toast'),
          ),
        ),
      ),
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(msg: 'Fluttter',
  gravity: ToastGravity.BOTTOM,
  toastLength: Toast.LENGTH_SHORT);
}
