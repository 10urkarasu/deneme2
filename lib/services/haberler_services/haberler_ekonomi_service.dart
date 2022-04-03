import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:habergundem/models/gundem_models/HavaDurumuModel.dart';
import '../../models/gundem_models/EkonomiModel.dart';
import '../../models/gundem_models/HaberlerModel.dart';
import 'package:http/http.dart' as http;

class EkonomiApi{
  static Future<EkonomiModel> getEkonomiData() async {
    final response = await http.get(
      Uri.parse('https://api.collectapi.com/economy/allCurrency'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );
    print(response.body);
    return EkonomiModel.fromJson(jsonDecode(response.body));
  }
}