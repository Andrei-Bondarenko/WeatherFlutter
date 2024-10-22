import 'package:equatable/equatable.dart';

import 'weather_current_data.dart';
import 'weather_location_data.dart';

class WeatherData extends Equatable{

  final WeatherLocationData? location;
  final WeatherCurrentData? current;

  const WeatherData({
    required this.location,
    required this.current
});

  @override
  String toString() {
    return 'CurrentWeatherResponseDto{location: $location, current: $current}';
  }

  @override
  List<Object?> get props => [
    location,
    current,
  ];
}