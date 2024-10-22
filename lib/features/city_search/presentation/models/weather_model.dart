import 'package:equatable/equatable.dart';
import 'package:weather/features/city_search/presentation/models/weather_current_model.dart';
import 'package:weather/features/city_search/presentation/models/weather_location_model.dart';

class WeatherModel extends Equatable{

  final WeatherLocationModel location;
  final WeatherCurrentModel current;

  const WeatherModel({
    required this.location,
    required this.current
});

  @override
  List<Object?> get props => [
    location,
    current,
  ];
}