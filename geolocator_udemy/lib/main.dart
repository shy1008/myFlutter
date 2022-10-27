import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:proj4dart/proj4dart.dart';

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
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var pointSrc = Point(x: 37.375219, y: 126.947937);

  var projSrc = Projection.get('EPSG:4326')!;

  var projDst = Projection.get('EPSG:2097') ??
      Projection.add(
        'EPSG:2097',
        '+proj=tmerc +lat_0=38 +lon_0=128 +k=0.9999 +x_0=400000 +y_0=600000 +ellps=bessel +units=m +no_defs +towgs84=-146.43,507.89,681.46',
      );

  @override
  Widget build(BuildContext context) {
    print(projSrc);
    print(projDst);

    var pointForward = projSrc.transform(projDst, pointSrc);
    print(pointForward);
    print(pointForward.toArray());


    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: SizedBox(
          width: 30,
          height: 30,
          child: Center(child: CircularProgressIndicator())
        ),
      ),
    );
  }


}


