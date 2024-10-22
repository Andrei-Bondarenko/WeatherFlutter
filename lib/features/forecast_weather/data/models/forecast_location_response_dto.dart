import 'package:equatable/equatable.dart';

class ForecastLocationResponseDto extends Equatable {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tzId;
  final int localTimeEpoch;
  final String localTime;

  const ForecastLocationResponseDto({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localTimeEpoch,
    required this.localTime,
  });

  factory ForecastLocationResponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastLocationResponseDto(
        name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'],
      lon: json['lon'],
      tzId: json['tz_id'],
      localTimeEpoch: json['localtime_epoch'],
      localTime: json['localtime'],
    );
  }

  @override
  List<Object?> get props => [

  ];
}
