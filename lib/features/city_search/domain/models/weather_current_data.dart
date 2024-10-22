import 'package:equatable/equatable.dart';
import 'package:weather/features/city_search/data/models/current_weather_condition_response_dto.dart';
import 'package:weather/features/city_search/domain/models/weather_condition_data.dart';

class WeatherCurrentData extends Equatable {
  const WeatherCurrentData({
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
      required this.feelslikeC,
      required this.feelslikeF,
      required this.windchillC,
      required this.windchillF,
      required this.heatindexC,
      required this.heatindexF,
      required this.dewpointC,
      required this.dewpointF,
      required this.visKm,
      required this.visMiles,
      required this.uv,
      required this.gustMph,
      required this.gustKph
  });

  final int? lastUpdatedEpoch;
  final String? lastUpdated;
  final double? tempC;
  final double? tempF;
  final int? isDay;
  final WeatherConditionData? condition;
  final double? windMph;
  final double? windKph;
  final int? windDegree;
  final String? windDir;
  final double? pressureMb;
  final double? pressureIn;
  final double? precipMm;
  final double? precipIn;
  final int? humidity;
  final int? cloud;
  final double? feelslikeC;
  final double? feelslikeF;
  final double? windchillC;
  final double? windchillF;
  final double? heatindexC;
  final double? heatindexF;
  final double? dewpointC;
  final double? dewpointF;
  final double? visKm;
  final double? visMiles;
  final double? uv;
  final double? gustMph;
  final double? gustKph;

  @override
  String toString() {
    return 'CurrentWeatherCurrentResponseDto{lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph}';
  }

  @override
  List<Object?> get props => [
    lastUpdatedEpoch,
    lastUpdated,
    tempC,
    tempF,
    isDay,
    condition,
    windMph,
    windKph,
    windDegree,
    windDir,
    pressureMb,
    pressureIn,
    precipMm,
    precipIn,
    humidity,
    cloud,
    feelslikeC,
    feelslikeF,
    windchillC,
    windchillF,
    heatindexC,
    heatindexF,
    dewpointC,
    dewpointF,
    visKm,
    visMiles,
    uv,
    gustMph,
    gustKph,
  ];
}
