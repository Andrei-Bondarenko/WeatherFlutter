import 'forecast_forecastday_data.dart';

class ForecastForecastData {
  final List<ForecastForecastdayData?> forecastDay;

  ForecastForecastData({required this.forecastDay});

  factory ForecastForecastData.fromJson(
      Map<String, dynamic> json) {
    return ForecastForecastData(
      forecastDay: json['forecastday'],
    );
  }
}
