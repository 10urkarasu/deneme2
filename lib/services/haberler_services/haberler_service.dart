import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import '../../models/gundem_models/HaberlerModel.dart';
import 'package:http/http.dart' as http;

class HaberlerApi{
   static Future<HaberlerModel> getHaberlerData() async {
    final response = await http.get(
      Uri.parse('https://api.collectapi.com/news/getNews?country=tr&tag=general'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    return HaberlerModel.fromJson(jsonDecode(response.body));
  }
}
