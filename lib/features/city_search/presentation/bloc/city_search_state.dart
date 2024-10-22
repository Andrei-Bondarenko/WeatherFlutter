part of 'city_search_bloc.dart';

class CitySearchState extends Equatable {
  final WeatherModel? data;
  final bool isLoading;

  const CitySearchState({required this.isLoading, this.data});

  CitySearchState copyWith({bool? isLoading, WeatherModel? data}) {
    return CitySearchState(
        isLoading: isLoading ?? this.isLoading, data: data ?? this.data);
  }

  @override
  List<Object?> get props => [data];
}
