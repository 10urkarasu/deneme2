import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:habergundem/models/gundem_models/HavaDurumuModel.dart';
import '../../models/gundem_models/HaberlerModel.dart';
import 'package:http/http.dart' as http;

class HavaDurumuApi{
  static Future<HavaDurumuModel> getHaberlerData() async {
    final response = await http.get(
      Uri.parse('https://api.collectapi.com/weather/getWeather?data.lang=tr&data.city=ankara'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    return HavaDurumuModel.fromJson(jsonDecode(response.body));
  }
}