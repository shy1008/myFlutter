import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          drawer: Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
            child: Drawer(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('a'),
                  ),
                  ListTile(
                    title: Text('b'),
                  )
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: Center(
              child: Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.access_time),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      });
                }
              ),
            ),
          ),
        )
    );
  }
}
