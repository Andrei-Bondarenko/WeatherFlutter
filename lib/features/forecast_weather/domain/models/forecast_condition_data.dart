class ForecastConditionData {
  final String text;
  final String icon;
  final int code;

  ForecastConditionData({
    required this.text,
    required this.icon,
    required this.code,
  });

  factory ForecastConditionData.fromJson(Map<String, dynamic> json) {
    return ForecastConditionData(
        text: json['text'], icon: json['icon'], code: json['code']);
  }
}
