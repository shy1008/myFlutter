import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_table_calendar/widget/my_calendar.dart';

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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ko', 'KR'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
      ),
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
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
        centerTitle: true,
        title: Text("In.spire Total Service"),
        bottom: PreferredSize(
          child: Container(
            color: Color(0xff878585),
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body:  Center(
          child: myCalendar()
      ),
    );
  }
}

class dialog extends StatelessWidget {
  const dialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('open'),
      onPressed: (){
        showDialog(context: context, builder: (context) => AlertDialog(
          content: Expanded(
            child: myCalendar(),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text('CANCEL')),
            TextButton(onPressed: () => Navigator.pop(context), child: Text('OK')),

          ],
        ));
      },
    );
  }
}
