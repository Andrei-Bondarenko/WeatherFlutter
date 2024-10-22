import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:weather/core/network/constants.dart';

import '../models/current_weather_response_dto.dart';

class CitySearchApi {
  Future<CurrentWeatherResponseDto?> fetchCurrentWeatherData(
      {required String query}) async {

    debugPrint('FUNCTION CALLED');

    final uri = await get(Uri.parse(
        '${Constants.baseUrl}/current.json?key=${Constants.key}&aqi=no&q=$query'));

    final response = uri;

    debugPrint('API DATA ===>>> $response');
    if (response.statusCode == 200) {
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      // final jsonMap = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return CurrentWeatherResponseDto.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
