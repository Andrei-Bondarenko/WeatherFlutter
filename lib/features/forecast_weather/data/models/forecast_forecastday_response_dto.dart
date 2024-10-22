import 'forecast_astro_response_dto.dart';
import 'forecast_day_response_dto.dart';
import 'forecast_hour_response_dto.dart';

class ForecastForecastdayResponseDto {
  final String date;
  final int dateEpoch;
  final ForecastDayResponseDto day;
  final ForecastAstroResponseDto astro;
final List<ForecastHourResponseDto> hour;

  ForecastForecastdayResponseDto({
    required this.date,
    required this.dateEpoch,
    required this.day,
    required this.astro,
    required this.hour,
  });

  factory ForecastForecastdayResponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastForecastdayResponseDto(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: ForecastDayResponseDto.fromJson(json['day']),
      astro: ForecastAstroResponseDto.fromJson(json['astro']),
      hour: json['hour'],
    );
  }
}
