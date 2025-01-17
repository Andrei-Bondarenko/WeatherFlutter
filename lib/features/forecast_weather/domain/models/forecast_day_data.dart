import 'package:weather/features/forecast_weather/data/models/forecast_condition_response_dto.dart';

import 'forecast_condition_data.dart';

class ForecastDayData {
  final double maxTempC;
  final double maxTempF;
  final double minTempC;
  final double minTempF;
  final double avgTempC;
  final double avgTempF;
  final double maxWindMph;
  final double maxWindKph;
  final double totalPrecipMm;
  final double totalPrecipIn;
  final double totalSnowCm;
  final double avgVisKm;
  final double avgVisMiles;
  final int avgHumidity;
  final int dailyWillItRain;
  final int dailyChanceOfRain;
  final int dailyWillItSnow;
  final int dailyChanceOfSnow;
  final ForecastConditionData? condition;
  final int uv;

  ForecastDayData({
    required this.maxTempC,
    required this.maxTempF,
    required this.minTempC,
    required this.minTempF,
    required this.avgTempC,
    required this.avgTempF,
    required this.maxWindMph,
    required this.maxWindKph,
    required this.totalPrecipMm,
    required this.totalPrecipIn,
    required this.totalSnowCm,
    required this.avgVisKm,
    required this.avgVisMiles,
    required this.avgHumidity,
    required this.dailyWillItRain,
    required this.dailyChanceOfRain,
    required this.dailyWillItSnow,
    required this.dailyChanceOfSnow,
    required this.condition,
    required this.uv,
  });

  factory ForecastDayData.fromJson(Map<String, dynamic> json) {
    return ForecastDayData(
      maxTempC: json['maxtemp_c'],
      maxTempF: json['maxtemp_f'],
      minTempC: json['mintemp_c'],
      minTempF: json['mintemp_f'],
      avgTempC: json['avgtemp_c'],
      avgTempF: json['avgtemp_f'],
      maxWindMph: json['maxwind_mph'],
      maxWindKph: json['maxwind_kph'],
      totalPrecipMm: json['totalprecip_mm'],
      totalPrecipIn: json['totalprecip_in'],
      totalSnowCm: json['totalsnow_cm'],
      avgVisKm: json['avgvis_km'],
      avgVisMiles: json['avgvis_miles'],
      avgHumidity: json['avghumidity'],
      dailyWillItRain: json['daily_will_it_rain'],
      dailyChanceOfRain: json['daily_chance_of_rain'],
      dailyWillItSnow: json['daily_will_of_snow'],
      dailyChanceOfSnow: json['daily_chance_it_snow'],
      condition: ForecastConditionData.fromJson(json['condition']),
      uv: json['uv'],);
  }

}
