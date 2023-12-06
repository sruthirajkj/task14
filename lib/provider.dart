import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import 'modelclass.dart';

class personprovider extends ChangeNotifier {
  final apiurl = "https://jsonplaceholder.typicode.com/users";
  List<placeholder> userlist = [];
  bool get loading => userlist.isEmpty;
  Future<void> getuser() async {
    try {
      final response = await http.get(Uri.parse(apiurl));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        userlist =
            data.map((userJson) => placeholder.fromJson(userJson)).toList();
        notifyListeners();
      } else {
        throw Exception('failed to load');
      }
    } catch (error) {
      throw 'failed to load data';
    }
  }
}
