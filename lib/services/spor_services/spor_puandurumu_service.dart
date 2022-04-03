import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:habergundem/models/spor_models/PuanDurumuModel.dart';
import '../../models/gundem_models/HaberlerModel.dart';
import 'package:http/http.dart' as http;

class PuanDurumuApi{
  static Future<PuanDurumuModel> getPuanDurumuData() async {
    final response = await http.get(
      Uri.parse('https://api.collectapi.com/football/league?data.league=super-lig'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    print(response.body);
    return PuanDurumuModel.fromJson(jsonDecode(response.body));
  }
}