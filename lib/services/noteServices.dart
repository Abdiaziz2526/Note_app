import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NoteServices {
  void save(
    
      {
      required BuildContext context,
      required String title,
      required String date,
      required String description,
      required VoidCallback onError
      }) async {
    try {
      http.Response res = await http.post(
          Uri.parse("https://backend-noteapp-x7n8.onrender.com/api/notes"),
          headers: {"Content-type": "application/json; charset=UTF-8"},
          body: jsonEncode(
              {"title": title, "description": description, "date": date}));
              print(res.statusCode);
              print(res.body);

              if(res.statusCode == 201){
                Navigator.of(context).pop();

              }else {
                onError();
              }
    } catch (error) {
      onError();
      print(error.toString());
    }
  }
}
