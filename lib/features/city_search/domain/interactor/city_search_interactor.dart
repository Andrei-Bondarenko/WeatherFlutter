import 'package:weather/features/city_search/data/repository/city_search_repository_impl.dart';
import 'package:weather/features/city_search/domain/repository/city_search_repository.dart';

import '../models/weather_data.dart';

class CitySearchInteractor {
 final CitySearchRepository _repository = CitySearchRepositoryImpl();

 Future<WeatherData?> fetchCurrentWeatherData({required String query}) {
   return _repository.fetchCurrentWeatherData(query: query);
 }
}