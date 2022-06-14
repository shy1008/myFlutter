import 'package:flutter/material.dart';

class Fuel extends StatefulWidget {
  const Fuel({Key? key}) : super(key: key);

  @override
  State<Fuel> createState() => _FuelState();
}

class _FuelState extends State<Fuel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FUEL"),
      ),
      body: Center(
        child: (Text('fuel')),
      ),
    );
  }
}
