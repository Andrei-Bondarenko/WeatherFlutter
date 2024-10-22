import 'package:weather/features/city_search/data/models/current_weather_condition_response_dto.dart';

class CurrentWeatherCurrentResponseDto {
  CurrentWeatherCurrentResponseDto({
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
  final CurrentWeatherConditionResponseDto? condition;
  final double? windMph;
  final double? windKph;
  final int? windDegree;
  final String? windDir;
  final double? pressureMb;
  final double? pressureIn;
  final double? precipMm;
  final double precipIn;
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

  factory CurrentWeatherCurrentResponseDto.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherCurrentResponseDto(
        lastUpdatedEpoch: json["last_updated_epoch"],
        lastUpdated: json["last_updated"],
        tempC: json["temp_c"],
        tempF: json["temp_f"],
        isDay: json["is_day"],
        condition:
            CurrentWeatherConditionResponseDto.fromJson(json["condition"]),
        windMph: json["wind_mph"],
        windKph: json["wind_kph"],
        windDegree: json["wind_degree"],
        windDir: json["wind_dir"],
        pressureMb: json["pressure_mb"],
        pressureIn: json["pressure_in"],
        precipMm: json["precip_mm"],
        precipIn: json["precip_in"],
        humidity: json["humidity"],
        cloud: json["cloud"],
        feelslikeC: json["feelslike_c"],
        feelslikeF: json["feelslike_f"],
        windchillC: json["windchill_c"],
        windchillF: json["windchill_f"],
        heatindexC: json["heatindex_c"],
        heatindexF: json["heatindex_f"],
        dewpointC: json["dewpoint_c"],
        dewpointF: json["dewpoint_f"],
        visKm: json["vis_km"],
        visMiles: json["vis_miles"],
        uv: json["uv"],
        gustMph: json["gust_mph"],
        gustKph: json["gust_kph"]);
  }

  @override
  String toString() {
    return 'CurrentWeatherCurrentResponseDto{lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph}';
  }
}
