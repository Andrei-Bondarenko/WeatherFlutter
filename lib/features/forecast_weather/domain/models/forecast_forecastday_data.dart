import 'forecast_astro_data.dart';
import 'forecast_day_data.dart';
import 'forecast_hour_data.dart';

class ForecastForecastdayData {
  final String date;
  final int dateEpoch;
  final ForecastDayData day;
  final ForecastAstroData astro;
final List<ForecastHourData> hour;

  ForecastForecastdayData({
    required this.date,
    required this.dateEpoch,
    required this.day,
    required this.astro,
    required this.hour,
  });

  factory ForecastForecastdayData.fromJson(
      Map<String, dynamic> json) {
    return ForecastForecastdayData(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: ForecastDayData.fromJson(json['day']),
      astro: ForecastAstroData.fromJson(json['astro']),
      hour: json['hour'],
    );
  }
}
