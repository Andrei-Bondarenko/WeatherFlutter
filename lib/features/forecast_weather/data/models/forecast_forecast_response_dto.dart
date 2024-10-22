import 'forecast_forecastday_response_dto.dart';

class ForecastForecastResponseDto {
  final List<ForecastForecastdayResponseDto> forecastDay;

  ForecastForecastResponseDto({required this.forecastDay});

  factory ForecastForecastResponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastForecastResponseDto(
      forecastDay: json['forecastday'],
    );
  }
}
