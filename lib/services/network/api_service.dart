import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/property_model.dart';
import '../services.dart';

class APIService extends Services with ChangeNotifier {
  static const _headers = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<PropertyModel> getAllProperties() async {
    final response = await get(
      URLS.properties,
      headers: _headers,
    );
    return PropertyModel.fromJson(json.decode(response.body));
  }
}
