import 'package:weather/features/forecast_weather/data/models/forecast_current_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_forecast_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_location_response_dto.dart';

class ForecastResponseDto {
  final ForecastLocationResponseDto? location;
  final ForecastCurrentResponseDto? current;
  final ForecastForecastResponseDto? forecast;

  ForecastResponseDto({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory ForecastResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastResponseDto(
      location: ForecastLocationResponseDto.fromJson(json['location']),
      current: ForecastCurrentResponseDto.fromJson(json['current']),
      forecast: ForecastForecastResponseDto.fromJson(json['forecast']),
    );
  }

}
