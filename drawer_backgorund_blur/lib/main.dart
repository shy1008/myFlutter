import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem({required this.title, required this.icon});
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String userPicUrl = "https://picsum.photos/250?image=9";
  List<DrawerItem> drawerItems = [DrawerItem(title: "abc", icon: Icons.add),DrawerItem(title: "def", icon: Icons.title)];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: SizedBox(
        width: 249,
        child: Drawer(
          child: Stack(
            //  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop)
            children: <Widget>[
              Image.network(
                userPicUrl,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.withOpacity(0.5)),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 100,
                height: 100.0,
                width: 100.0,
                child: InkWell(
                  onTap: () async {
                    /*imageFile =
                    await ImagePicker.pickImage(source: ImageSource.gallery);*/
                    setState(() {});
                  },
                  splashColor: Colors.lightGreenAccent,
                  highlightColor: Colors.pinkAccent.withOpacity(0.5),
                  child: Icon(
                    Icons.image,
                    size: 24,
                    color: Colors.transparent,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: SafeArea(
                      child: ClipRRect(
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(64),
                            border: Border(
                                right: BorderSide(width: 2, color: Colors.white),
                                left: BorderSide(width: 2, color: Colors.white),
                                top: BorderSide(width: 2, color: Colors.white),
                                bottom:
                                BorderSide(width: 2, color: Colors.white)),
                            image: DecorationImage(
                                image: NetworkImage(userPicUrl),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "ژینەر حەیدەر تەها",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "C6-1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  Column(
                    children: drawerItems.map((item) {
                      return ListTile(
                        leading: Icon(
                          item.icon,
                          size: 28,
                          color: Colors.white,
                        ),
                        title: Text(
                          item.title,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                  Spacer(),
                  ListTile(
                    leading: Icon(
                      Icons.exit_to_app,
                      size: 28,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Sign Out",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}