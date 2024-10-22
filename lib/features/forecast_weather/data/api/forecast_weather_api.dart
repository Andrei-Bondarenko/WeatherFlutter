import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:weather/core/network/constants.dart';

import '../models/forecast_response_dto.dart';

class ForecastWeatherApi {

  Future<ForecastResponseDto?> fetchForecastData({required int days, required String query,
  }) async {

    debugPrint('FUNCTION CALLED');

    final uri = await get(Uri.parse(
      '${Constants.baseUrl}/forecast.json?key=${Constants.key}&q=${query}&days=10&aqi=no&alerts=no'
    ));

    final response = uri;

    debugPrint('FORECAST API DATA =====>>>>> $response');

    if(response.statusCode == 200) {
      final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
      return ForecastResponseDto.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load album');
    }
  }


}