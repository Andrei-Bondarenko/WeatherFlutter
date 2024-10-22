import 'forecast_current_data.dart';
import 'forecast_forecast_data.dart';
import 'forecast_location_data.dart';

class ForecastData {
  final ForecastLocationData? location;
  final ForecastCurrentData? current;
  final ForecastForecastData? forecast;

  ForecastData({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory ForecastData.fromJson(Map<String, dynamic> json) {
    return ForecastData(
      location: ForecastLocationData.fromJson(json['location']),
      current: ForecastCurrentData.fromJson(json['current']),
      forecast: ForecastForecastData.fromJson(json['forecast']),
    );
  }
}
