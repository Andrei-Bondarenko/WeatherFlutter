import 'package:weather/features/city_search/domain/models/weather_condition_data.dart';
import 'package:weather/features/city_search/domain/models/weather_current_data.dart';
import 'package:weather/features/city_search/domain/models/weather_location_data.dart';
import 'package:weather/features/city_search/presentation/models/weather_condition_state.dart';
import 'package:weather/features/city_search/presentation/models/weather_location_model.dart';

import '../../domain/models/weather_data.dart';
import '../models/weather_current_model.dart';
import '../models/weather_model.dart';

class WeatherModelMapper {
  WeatherModel mapWeatherData(WeatherData domain) {
    final location = domain.location;
    final current = domain.current;
    return WeatherModel(
      location: location != null ? _mapWeatherLocationData(location) : const WeatherLocationModel(name: '', country: '', localtime: ''),
      current: current != null ? _mapWeatherCurrentData(current) : const WeatherCurrentModel(lastUpdated: '', tempC: '', tempF: '', condition: WeatherConditionState.unknown, windKph: '', windDir: '',windDegree: '', pressureMb: '', precipMm: '', humidity: '', cloud: '', feelslikeC: '', feelslikeF: ''),
    );
  }

  WeatherLocationModel _mapWeatherLocationData(WeatherLocationData domain) =>
      WeatherLocationModel(
          name: domain.name ?? '???',
          country: domain.country ?? '???',
          localtime: domain.localtime ?? '???');

  WeatherCurrentModel _mapWeatherCurrentData(WeatherCurrentData domain) {
    final condition = domain.condition;
    final int end = domain.pressureMb.toString().length;
    return WeatherCurrentModel(
      lastUpdated: domain.lastUpdated ?? '',
      tempC: '${domain.tempC ?? 0}°C',
      tempF: '${domain.tempF ?? 0}°F',
      condition: condition != null
          ? _mapWeatherConditionState(condition)
          : WeatherConditionState.unknown,
      windKph: '${domain.windKph ?? 0}Kph',
      windDegree: '${domain.windDegree ?? 0}',
      windDir: '${domain.windDir}',
      pressureMb: '${domain.pressureMb.toString().substring(0, end-2)}Mbar',
      precipMm: '${domain.precipMm ?? 0}mm',
      humidity: '${domain.humidity ?? 0}%',
      cloud: '${domain.cloud ?? 0}%',
      feelslikeC: '${domain.feelslikeC ?? 0}°C',
      feelslikeF: '${domain.feelslikeF ?? 0}°F',
    );
  }

  WeatherConditionState _mapWeatherConditionState(WeatherConditionData domain) {
    return WeatherConditionState.values.firstWhere(
        (element) => element.code == domain.code,
        orElse: () => WeatherConditionState.unknown);
  }
}
