import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as https;
import 'dart:convert';
import 'package:http/http.dart';

import '../models/book_api/top_objects.dart';

class Repository {
  static Future<TopObjects> getMyTopObjects() async {
    try {
      Response response = await https.get(Uri.parse(
          "https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=08xVWMOAFrDcGorird1AvX8zNDcGzGbh"));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        TopObjects topObjects = TopObjects.fromJson(jsonDecode(response.body));
        return topObjects;
      } else {
        throw Exception();
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
