import 'current_weather_current_response_dto.dart';
import 'current_weather_location_response_dto.dart';

class CurrentWeatherResponseDto {
  final CurrentWeatherLocationResponseDto? location;
  final CurrentWeatherCurrentResponseDto? current;

  CurrentWeatherResponseDto({
    required this.location,
    required this.current,
  });

  factory CurrentWeatherResponseDto.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherResponseDto(
        location: CurrentWeatherLocationResponseDto.fromJson(json["location"]),
        current: CurrentWeatherCurrentResponseDto.fromJson(json["current"]));
  }

  @override
  String toString() {
    return 'CurrentWeatherResponseDto{location: $location, current: $current}';
  }
}
