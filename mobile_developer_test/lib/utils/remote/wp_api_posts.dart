// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_developer_test/utils/remote/internet_Connect.dart';

class apiRestPosts {
//ATRIBUTOS
  final InternetConnect _internetConnect = InternetConnect();
  String API_BOX = "Api_data";

  Future<List> Pageweb() async {
    _internetConnect.internetConnectivity();
    final internetisConnect = await _internetConnect.internetConnectivity();
    final urlWp = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
    final List postsJson = Hive.box(API_BOX).get('posts', defaultValue: []);

    if (internetisConnect == false && postsJson.isNotEmpty) return postsJson;

    final response =
        await http.get(urlWp, headers: {'Accept': 'application/json'});
    var converJson = jsonDecode(response.body);
    Hive.box(API_BOX).put('posts', converJson);
    return converJson;
  }
}
