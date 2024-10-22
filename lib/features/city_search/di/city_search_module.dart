import 'package:weather/core/di/main_module.dart';
import 'package:weather/features/city_search/data/api/city_search_api.dart';
import 'package:weather/features/city_search/data/mappers/city_search_mapper.dart';
import 'package:weather/features/city_search/data/repository/city_search_repository_impl.dart';
import 'package:weather/features/city_search/domain/interactor/city_search_interactor.dart';
import 'package:weather/features/city_search/presentation/bloc/city_search_bloc.dart';

void initCitySearchModule() {
  // getIt.registerLazySingleton(() => CitySearchApi());
  // getIt.registerFactory(() => CitySearchMapper());
  // getIt.registerFactory(() => CitySearchInteractor(getIt()));
  // getIt.registerFactory(() => CitySearchBloc(getIt(),getIt()));
  // getIt.registerFactory(() => CitySearchRepositoryImpl(getIt(),getIt()));
}
