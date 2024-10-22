import 'package:weather/features/forecast_weather/data/models/forecast_astro_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_condition_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_current_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_day_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_forecast_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_forecastday_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_hour_response_dto.dart';
import 'package:weather/features/forecast_weather/data/models/forecast_location_response_dto.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_astro_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_condition_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_current_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_day_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_forecast_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_forecastday_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_hour_data.dart';
import 'package:weather/features/forecast_weather/domain/models/forecast_location_data.dart';

import '../models/forecast_response_dto.dart';

class ForecastWeatherMapper {
  ForecastData mapForecastData(ForecastResponseDto dto) {
    final location = dto.location;
    final current = dto.current;
    final forecast = dto.forecast;

    return ForecastData(
      location: location != null ? _mapLocationData(location) : null,
      current: current != null ? _mapCurrentData(current) : null,
      forecast: forecast != null ? _mapForecastData(forecast) : null,
    );
  }

  ForecastLocationData _mapLocationData(ForecastLocationResponseDto dto) {
    return ForecastLocationData(
      name: dto.name,
      region: dto.region,
      country: dto.country,
      lat: dto.lat,
      lon: dto.lon,
      tzId: dto.tzId,
      localTimeEpoch: dto.localTimeEpoch,
      localTime: dto.localTime,
    );
  }

  ForecastCurrentData _mapCurrentData(ForecastCurrentResponseDto dto) {
    final condition = dto.condition;
    return ForecastCurrentData(
      lastUpdatedEpoch: dto.lastUpdatedEpoch,
      lastUpdated: dto.lastUpdated,
      tempC: dto.tempC,
      tempF: dto.tempF,
      isDay: dto.isDay,
      condition: condition != null ? _mapConditionData(condition) : null,
      windMph: dto.windMph,
      windKph: dto.windKph,
      windDegree: dto.windDegree,
      windDir: dto.windDir,
      pressureMb: dto.pressureMb,
      pressureIn: dto.pressureIn,
      precipMm: dto.precipMm,
      precipIn: dto.precipIn,
      humidity: dto.humidity,
      cloud: dto.cloud,
      feelsLikeC: dto.feelsLikeC,
      feelsLikeF: dto.feelsLikeF,
      windchillC: dto.windchillC,
      windchillF: dto.windchillF,
      heatIndexC: dto.heatIndexC,
      heatIndexF: dto.heatIndexF,
      dewPointC: dto.dewPointC,
      dewPointF: dto.dewPointF,
      visKm: dto.visKm,
      visMiles: dto.visMiles,
      uv: dto.uv,
      gustMph: dto.gustMph,
      gustKph: dto.gustKph,
    );
  }

  ForecastForecastData _mapForecastData(ForecastForecastResponseDto dto) {
    return ForecastForecastData(
      forecastDay: dto.forecastDay.map((e) => _mapForecastdayData(e)).toList(),
    );
  }

  ForecastForecastdayData _mapForecastdayData(
      ForecastForecastdayResponseDto dto) {
    return ForecastForecastdayData(
      date: dto.date,
      dateEpoch: dto.dateEpoch,
      day: _mapForecastDayData(dto.day),
      astro: _mapAstroData(dto.astro),
      hour: dto.hour.map((e) => _mapHourData(e)).toList(),
    );
  }

  ForecastDayData _mapForecastDayData(ForecastDayResponseDto dto) {
    final condition = dto.condition;
    return ForecastDayData(
      maxTempC: dto.maxTempC,
      maxTempF: dto.maxTempF,
      minTempC: dto.minTempC,
      minTempF: dto.minTempF,
      avgTempC: dto.avgTempC,
      avgTempF: dto.avgTempF,
      maxWindMph: dto.maxWindMph,
      maxWindKph: dto.maxWindKph,
      totalPrecipMm: dto.totalPrecipMm,
      totalPrecipIn: dto.totalPrecipIn,
      totalSnowCm: dto.totalSnowCm,
      avgVisKm: dto.avgVisKm,
      avgVisMiles: dto.avgVisMiles,
      avgHumidity: dto.avgHumidity,
      dailyWillItRain: dto.dailyWillItRain,
      dailyChanceOfRain: dto.dailyChanceOfRain,
      dailyWillItSnow: dto.dailyWillItSnow,
      dailyChanceOfSnow: dto.dailyChanceOfSnow,
      condition: condition != null ? _mapConditionData(condition) : null,
      uv: dto.uv,
    );
  }

  ForecastAstroData _mapAstroData(ForecastAstroResponseDto dto) {
    return ForecastAstroData(
      sunrise: dto.sunrise,
      sunset: dto.sunset,
      moonrise: dto.moonrise,
      moonset: dto.moonset,
      moon_phase: dto.moon_phase,
      moon_illumination: dto.moon_illumination,
      is_moon_up: dto.is_moon_up,
      is_sun_up: dto.is_sun_up,
    );
  }

  ForecastHourData _mapHourData(ForecastHourResponseDto dto) {
    return ForecastHourData(
      time_epoch: dto.time_epoch,
      time: dto.time,
      temp_c: dto.temp_c,
      temp_f: dto.temp_f,
      is_day: dto.is_day,
      condition: _mapConditionData(dto.condition),
      wind_mph: dto.wind_mph,
      wind_kph: dto.wind_kph,
      wind_degree: dto.wind_degree,
      wind_dir: dto.wind_dir,
      pressure_mb: dto.pressure_mb,
      pressure_in: dto.pressure_in,
      precip_mm: dto.precip_mm,
      precip_in: dto.precip_in,
      snow_cm: dto.snow_cm,
      humidity: dto.humidity,
      cloud: dto.cloud,
      feelslike_c: dto.feelslike_c,
      feelslike_f: dto.feelslike_f,
      windchill_c: dto.windchill_c,
      windchill_f: dto.windchill_f,
      heatindex_c: dto.heatindex_c,
      heatindex_f: dto.heatindex_f,
      dewpoint_c: dto.dewpoint_c,
      dewpoint_f: dto.dewpoint_f,
      will_it_rain: dto.will_it_rain,
      chance_of_rain: dto.chance_of_rain,
      will_it_snow: dto.will_it_snow,
      chance_of_snow: dto.chance_of_snow,
      vis_km: dto.vis_km,
      vis_miles: dto.vis_miles,
      gust_mph: dto.gust_mph,
      gust_kph: dto.gust_kph,
      uv: dto.uv,
    );
  }

  ForecastConditionData _mapConditionData(ForecastConditionResponseDto dto) {
    return ForecastConditionData(
      text: dto.text,
      icon: dto.icon,
      code: dto.code,
    );
  }
}
