import '../models/weather_data.dart';

abstract class CitySearchRepository {
  Future<WeatherData?> fetchCurrentWeatherData({required String query});
}