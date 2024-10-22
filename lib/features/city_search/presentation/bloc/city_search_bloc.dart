import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather/features/city_search/presentation/mappers/weather_model_mapper.dart';
import 'package:weather/features/city_search/presentation/models/weather_condition_state.dart';
import 'package:weather/features/city_search/presentation/models/weather_model.dart';

import '../../domain/interactor/city_search_interactor.dart';

part 'city_search_event.dart';

part 'city_search_state.dart';

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {
  final CitySearchInteractor _interactor = CitySearchInteractor();
  final WeatherModelMapper _modelMapper = WeatherModelMapper();

  final searchController = TextEditingController();

  CitySearchBloc() : super(const CitySearchState(isLoading: false)) {
    on<CitySearchDataFetched>(_onCitySearchDataFetched);
  }

  void _onCitySearchDataFetched(
    CitySearchDataFetched event,
    Emitter<CitySearchState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final data = await _interactor.fetchCurrentWeatherData(query: searchController.text);
    final model = data != null ? _modelMapper.mapWeatherData(data) : null;
    debugPrint('BLOC DATA ===>>>> $data');
    emit(state.copyWith(data: model, isLoading: false));
  }

  String setBackgroundImage(int code) {
    return switch (code) {
      WeatherConditionState.sunny => '',
      WeatherConditionState.partlyCloudy => '',
      WeatherConditionState.cloudy => '',
      WeatherConditionState.overcast => '',
      WeatherConditionState.mist => '',
      WeatherConditionState.lightRain => '',
      WeatherConditionState.heavyRain => '',
      WeatherConditionState.lightSnow => '',
      WeatherConditionState.heavySnow => '',
      _ => 'https://th.bing.com/th/id/OIG1.fsjZan9pHE.GP1dzoj0b?w=1024&h=1024&rs=1&pid=ImgDetMain'
    };
  }
}
