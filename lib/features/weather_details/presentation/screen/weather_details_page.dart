import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/city_search/presentation/models/weather_model.dart';

import '../../../city_search/presentation/bloc/city_search_bloc.dart';
import '../../../city_search/presentation/widgets/weather_widget.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          weatherModel.location.localtime,
          style: const TextStyle(fontSize: 24),
        ),
        bottom: const _BottomWidget(),
      ),
      body: Center(
        child: _Body(
          model: weatherModel,
        ),
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget implements PreferredSizeWidget {
  const _BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 2,
      color: Colors.black26,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 2);
}

class _Body extends StatelessWidget {
  const _Body({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
      return ListView(
        children: [
          _HumidityWidget(model: model),
          _PressureWidget(model: model),
          _CloudyWidget(model: model),
          _WindSpeed(model: model),
          _WindDegree(model: model),
          _WindDir(model: model),
          _Precipitation(model: model)
        ],
      );
  }
}

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Humidity: ',
      dataText: model.current.humidity,
    );
  }
}

class _PressureWidget extends StatelessWidget {
  const _PressureWidget({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Pressure: ',
      dataText: model.current.pressureMb,
    );
  }
}

class _CloudyWidget extends StatelessWidget {
  const _CloudyWidget({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Cloudiness: ',
      dataText: model.current.cloud,
    );
  }
}

class _WindSpeed extends StatelessWidget {
  const _WindSpeed({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Wind speed: ',
      dataText: model.current.windKph,
    );
  }
}

class _WindDegree extends StatelessWidget {
  const _WindDegree({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Wind Degree: ',
      dataText: model.current.windDegree,
    );
  }
}

class _WindDir extends StatelessWidget {
  const _WindDir({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Wind Dir: ',
      dataText: model.current.windDir,
    );
  }
}

class _Precipitation extends StatelessWidget {
  const _Precipitation({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      dataTypeText: 'Precipitation: ',
      dataText: model.current.precipMm,
    );
  }
}