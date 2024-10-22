import 'package:equatable/equatable.dart';
import 'package:weather/features/city_search/presentation/models/weather_condition_state.dart';

class WeatherCurrentModel extends Equatable {
  const WeatherCurrentModel({
    required this.lastUpdated,
    required this.tempC,
    required this.tempF,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.precipMm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
  });

  final String lastUpdated;
  final String tempC;
  final String tempF;
  final WeatherConditionState condition;
  final String windKph;
  final String windDegree;
  final String windDir;
  final String pressureMb;
  final String precipMm;
  final String humidity;
  final String cloud;
  final String feelslikeC;
  final String feelslikeF;

  @override
  List<Object?> get props => [
        lastUpdated,
        tempC,
        tempF,
        condition,
        windKph,
        windDir,
        pressureMb,
        precipMm,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
      ];
}
