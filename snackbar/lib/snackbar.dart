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
      home: Scaffold(
          appBar: AppBar(title: Text('Snack Bar')),
          body: Builder(
            builder: (BuildContext ctx) {
              return Center(child: FloatingActionButton(
                onPressed: () {
                  Scaffold.of(ctx)
                      .showSnackBar(const SnackBar(content: Text('Hellow')));
                },
              ));
            },
          )),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text('Snack Bar')),
//           body: Builder(
//             builder: (BuildContext ctx) {
//               return Center(child: FloatingActionButton(
//                 onPressed: () {
//                   Scaffold.of(ctx)
//                       .showSnackBar(const SnackBar(content: Text('Hellow')));
//                 },
//               ));
//             },
//           )),
//     );
//   }
// }
//
// class MySnackBar extends StatelessWidget {
//   const MySnackBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: RaisedButton(
//           onPressed: () {
//             Scaffold.of(context)
//                 .showSnackBar(SnackBar(content: Text('Hellow')));
//           },
//           child: Text('show me')),
//     );
//   }
// }

