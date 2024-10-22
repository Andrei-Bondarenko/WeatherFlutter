import 'package:equatable/equatable.dart';

class WeatherLocationModel extends Equatable {
  final String name;
  final String country;
  final String localtime;

  const WeatherLocationModel({
    required this.name,
    required this.country,
    required this.localtime
  });


  @override
  List<Object?> get props => [
    name,
    country,
    localtime,
  ];
}