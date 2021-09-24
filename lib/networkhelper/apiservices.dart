import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tvshow/screens/album.dart';

class APIService {
  // API key
  static const _api_key = "f74b743064msh2ee9c8dd2dde141p176bdfjsnedfb9fbf6aeb";
  // Base API url
  static const String _baseUrl = "movies-tvshows-data-imdb.p.rapidapi.com";
  // Base headers for Response url
  static const Map<String, String> _headers = {
    "content-type": "application/json",
    "x-rapidapi-host": "movies-tvshows-data-imdb.p.rapidapi.com",
    "x-rapidapi-key": _api_key,
  };

  // Base API request to get response
  // Base API request to get response
  Future<Album> get({
    @required String? endpoint,
    @required Map<String, String>? query,
  }) async {
    Uri uri = Uri.https(_baseUrl, endpoint!, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return json.decode(response.body);
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load json data');
    }
  }
}
