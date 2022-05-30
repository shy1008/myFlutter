import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
            child: const Text('Go to the Second page'),
            onPressed: () async{
              final returnData = await
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SecondPage("data")));
              if (returnData != null){
                print("$returnData");
              }
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('$data'),
            onPressed: () {
              Navigator.pop(context,"return data");
            },
          ),
        ));
  }
}
