import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../../models/gundem_models/EkonomiModel.dart';
import 'package:http/http.dart' as http;

class EkonomiApi{
  static Future<EkonomiModel> getEkonomiData(var context) async {
    final response = await DefaultAssetBundle.of(context).loadString("lib/JsonDatas/ekonomi.json");
    /*final response = await http.get(
      Uri.parse('https://api.collectapi.com/economy/allCurrency'),
      // Send authorization headers to the backend.
      headers: {
        HttpHeaders.authorizationHeader: 'apikey 6mdM7DM6imLfWqJNuhNBJq:2adRZnPigD1taScttFK2sP',
      },
    );*/
    return EkonomiModel.fromJson(jsonDecode(response));
  }
}