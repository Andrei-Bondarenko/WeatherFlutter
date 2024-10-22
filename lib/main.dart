import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/city_search/presentation/bloc/city_search_bloc.dart';
import 'package:weather/features/city_search/presentation/screen/city_search_screen.dart';

import 'core/di/main_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      useMaterial3: true
    ),
    home: BlocProvider(
      create: (context) => CitySearchBloc(),
      child: const CitySearchScreen(),
    ),
  );
  }

}

