class ForecastConditionResponseDto {
  final String text;
  final String icon;
  final int code;

  ForecastConditionResponseDto({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory ForecastConditionResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastConditionResponseDto(
        text: json['text'], icon: json['icon'], code: json['code']);
  }
}
