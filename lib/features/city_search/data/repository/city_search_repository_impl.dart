import 'package:weather/features/city_search/data/mappers/city_search_mapper.dart';
import 'package:weather/features/city_search/domain/models/weather_data.dart';

import '../../domain/repository/city_search_repository.dart';
import '../api/city_search_api.dart';

class CitySearchRepositoryImpl implements CitySearchRepository {
  final CitySearchApi _citySearchApi = CitySearchApi();
  final CitySearchMapper _citySearchMapper = CitySearchMapper();

  @override
  Future<WeatherData?> fetchCurrentWeatherData({required String query}) async {
    final data = await _citySearchApi.fetchCurrentWeatherData(query: query);
    if (data == null) return null;
    return _citySearchMapper.mapWeatherData(data);
  }

}