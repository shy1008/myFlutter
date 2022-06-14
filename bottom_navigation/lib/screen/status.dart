import 'package:flutter/material.dart';


class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
           child: Container(
             color: Color(0xff878585),
             height: 1.0,
           ),
          preferredSize: Size.fromHeight(1.0),
        ),
        backgroundColor: Colors.black,
        title: Text("STATUS"),
        elevation: 0,

      ),
      body: Center(
        child: (Container(

        )
        ),
      ),
    );
  }
}
