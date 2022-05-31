import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListView_remoteJson extends StatefulWidget {
  const ListView_remoteJson({Key? key}) : super(key: key);

  @override
  State<ListView_remoteJson> createState() => _ListView_remoteJsonState();
}

class _ListView_remoteJsonState extends State<ListView_remoteJson> {

  Future<List<PostData>> _getPost() async{
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(url);

  }



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class PostData {
  late final int userId;
  late final int id;
  late final String title;
  late final String body;

  PostData( this.userId, this.id, this.title, this.body);
}

