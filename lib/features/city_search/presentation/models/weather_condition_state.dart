enum WeatherConditionState {
  sunny(code: 1000),
  partlyCloudy(code: 1003),
  cloudy(code: 1006),
  overcast(code: 1009),
  mist(code: 1030),
  lightRain(code: 1183),
  heavyRain(code: 1195),
  lightSnow(code: 1213),
  heavySnow(code: 1225),
  unknown(code: 0);

  const WeatherConditionState({required this.code});

  final int code;
}