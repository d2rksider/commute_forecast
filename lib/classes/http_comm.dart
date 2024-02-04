import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpComm {
  Future<dynamic> _request(String uri) async {
    final url = Uri.parse(uri);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    }
    throw Error();
  }

  FutureBuilder request(String url) {
    return FutureBuilder(
      future: _request(url),
      builder: (context, snapshot) {
        if (snapshot.hasData) return const Text("There is data!");
        return const Text('Loading..');
      },
    );
  }
}
