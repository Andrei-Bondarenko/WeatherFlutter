class CurrentWeatherConditionResponseDto {
  final String? text;
  final String? icon;
  final int? code;

  CurrentWeatherConditionResponseDto(
      {required this.text, required this.icon, required this.code});

  factory CurrentWeatherConditionResponseDto.fromJson(
      Map<String, dynamic> json) {
    return CurrentWeatherConditionResponseDto(
        text: json["text"], icon: json["icon"], code: json["code"]);
  }

  @override
  String toString() {
    return 'CurrentWeatherConditionResponseDto{text: $text, icon: $icon, code: $code}';
  }
}
