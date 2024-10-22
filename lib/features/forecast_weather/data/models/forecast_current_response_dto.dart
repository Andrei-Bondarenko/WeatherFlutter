import 'package:weather/features/forecast_weather/data/models/forecast_condition_response_dto.dart';

class ForecastCurrentResponseDto {
  final int lastUpdatedEpoch;
  final String lastUpdated;
  final double tempC;
  final double tempF;
  final int isDay;
  final ForecastConditionResponseDto? condition;
  final double windMph;
  final double windKph;
  final int windDegree;
  final String windDir;
  final double pressureMb;
  final double pressureIn;
  final double precipMm;
  final double precipIn;
  final int humidity;
  final int cloud;
  final double feelsLikeC;
  final double feelsLikeF;
  final double windchillC;
  final double windchillF;
  final double heatIndexC;
  final double heatIndexF;
  final double dewPointC;
  final double dewPointF;
  final double visKm;
  final double visMiles;
  final double uv;
  final double gustMph;
  final double gustKph;

  ForecastCurrentResponseDto({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.humidity,
    required this.cloud,
    required this.feelsLikeC,
    required this.feelsLikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatIndexC,
    required this.heatIndexF,
    required this.dewPointC,
    required this.dewPointF,
    required this.visKm,
    required this.visMiles,
    required this.uv,
    required this.gustMph,
    required this.gustKph,
  });

  factory ForecastCurrentResponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastCurrentResponseDto(
      lastUpdatedEpoch: json['last_updated_epoch'],
        lastUpdated: json['last_updated'],
        tempC: json['temp_c'],
        tempF: json['temp_f'],
        isDay: json['is_day'],
        condition: ForecastConditionResponseDto.fromJson(json['condition']),
        windMph: json['wind_mph'],
        windKph: json['wind_kph'],
        windDegree: json['wind_degree'],
        windDir: json['wind_dir'],
        pressureMb: json['pressure_mb'],
        pressureIn: json['pressure_in'],
        precipMm: json['precip_mm'],
        precipIn: json['precip_in'],
        humidity: json['humidity'],
        cloud: json['cloude'],
        feelsLikeC: json['feelslike_c'],
        feelsLikeF: json['feelslike_f'],
        windchillC: json['windchill_c'],
        windchillF: json['windchill_f'],
        heatIndexC: json['heatIndex_c'],
        heatIndexF: json['heatIndex_f'],
        dewPointC: json['dewpoint_c'],
        dewPointF: json['dewpoint_f'],
        visKm: json['vis_km'],
        visMiles: json['vis_miles'],
        uv: json[''],
        gustMph: json['gust_mph'],
        gustKph: json['gust_kph'],
    );
  }
}
