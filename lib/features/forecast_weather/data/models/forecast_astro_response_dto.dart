class ForecastAstroResponseDto {

  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moon_phase;
  final int moon_illumination;
  final int is_moon_up;
  final int is_sun_up;

  ForecastAstroResponseDto({
   required this.sunrise,
  required this.sunset,
  required this.moonrise,
  required this.moonset,
  required this.moon_phase,
  required this.moon_illumination,
  required this.is_moon_up,
  required this.is_sun_up,
});

  factory ForecastAstroResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastAstroResponseDto(
    sunrise: json['sunrise'],
    sunset: json['sunset'],
        moonrise: json['moonrise'],
        moonset: json['moonset'],
        moon_phase: json['moon_phase'],
        moon_illumination: json['moon_illumination'],
        is_moon_up: json['is_moon_up'],
        is_sun_up: json['is_sun_up'],
    );
  }
}