import 'package:weather/features/forecast_weather/data/models/forecast_condition_response_dto.dart';

class ForecastHourResponseDto {
  final int time_epoch;
  final String time;
  final double temp_c;
  final double temp_f;
  final int is_day;
  final ForecastConditionResponseDto condition;
  final double wind_mph;
  final double wind_kph;
  final int wind_degree;
  final String wind_dir;
  final double pressure_mb;
  final double pressure_in;
  final double precip_mm;
  final double precip_in;
  final double snow_cm;
  final int humidity;
  final int cloud;
  final double feelslike_c;
  final double feelslike_f;
  final double windchill_c;
  final double windchill_f;
  final double heatindex_c;
  final double heatindex_f;
  final double dewpoint_c;
  final double dewpoint_f;
  final int will_it_rain;
  final int chance_of_rain;
  final int will_it_snow;
  final int chance_of_snow;
  final double vis_km;
  final double vis_miles;
  final double gust_mph;
  final double gust_kph;
  final int uv;

  ForecastHourResponseDto({
    required this.time_epoch,
    required this.time,
    required this.temp_c,
    required this.temp_f,
    required this.is_day,
    required this.condition,
    required this.wind_mph,
    required this.wind_kph,
    required this.wind_degree,
    required this.wind_dir,
    required this.pressure_mb,
    required this.pressure_in,
    required this.precip_mm,
    required this.precip_in,
    required this.snow_cm,
    required this.humidity,
    required this.cloud,
    required this.feelslike_c,
    required this.feelslike_f,
    required this.windchill_c,
    required this.windchill_f,
    required this.heatindex_c,
    required this.heatindex_f,
    required this.dewpoint_c,
    required this.dewpoint_f,
    required this.will_it_rain,
    required this.chance_of_rain,
    required this.will_it_snow,
    required this.chance_of_snow,
    required this.vis_km,
    required this.vis_miles,
    required this.gust_mph,
    required this.gust_kph,
    required this.uv,
  });

  factory ForecastHourResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastHourResponseDto(
      time_epoch: json['time_epoch'],
      time: json['time'],
      temp_c: json['temp_c'],
      temp_f: json['temp_f'],
      is_day: json['is_day'],
      condition: ForecastConditionResponseDto.fromJson(json['condition']),
      wind_mph: json['wind_mph'],
      wind_kph: json['wind_kph'],
      wind_degree: json['wind_degree'],
      wind_dir: json['wind_dir'],
      pressure_mb: json['pressure_mb'],
      pressure_in: json['pressure_in'],
      precip_mm: json['precip_mm'],
      precip_in: json['precip_in'],
      snow_cm: json['snow_cm'],
      humidity: json['humidity'],
      cloud: json['cloud'],
      feelslike_c: json['feelslike_c'],
      feelslike_f: json['feelslike_f'],
      windchill_c: json['windchill_c'],
      windchill_f: json['windchill_f'],
      heatindex_c: json['heatindex_c'],
      heatindex_f: json['heatindex_f'],
      dewpoint_c: json['dewpoint_c'],
      dewpoint_f: json['dewpoint_f'],
      will_it_rain: json['will_it_rain'],
      chance_of_rain: json['chance_of_rain'],
      will_it_snow: json['will_it_snow'],
      chance_of_snow: json['chance_of_snow'],
      vis_km: json['vis_km'],
      vis_miles: json['vis_miles'],
      gust_mph: json['gust_mph'],
      gust_kph: json['gust_kph'],
      uv: json['uv'],
    );
  }
}
