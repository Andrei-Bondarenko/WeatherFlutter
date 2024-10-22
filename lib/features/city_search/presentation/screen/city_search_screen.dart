import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/weather_details/presentation/screen/weather_details_page.dart';

import '../bloc/city_search_bloc.dart';
import '../models/weather_model.dart';
import '../widgets/weather_widget.dart';

class CitySearchScreen extends StatelessWidget {
  const CitySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final citySearchBloc = CitySearchBloc();
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      if (state.isLoading) {
        return const CircularProgressIndicator();
      }
      final data = state.data;
      return Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
                citySearchBloc.setBackgroundImage(state.data?.current.condition.code ?? 0),
                fit: BoxFit.cover),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
                child: _SearchTextField(),
              ),
              _CountryCityName(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Row(
                  children: [
                    Expanded(child: _TempCWidget()),
                    Expanded(child: _FeelsLikeCWidget()),
                  ],
                ),
                const Row(
                  children: [
                    Expanded(child: _TempFWidget()),
                    Expanded(child: _FeelsLikeFWidget()),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: _DetailsButton(
                    data: data,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();
    return TextField(
      controller: bloc.searchController,
      style: const TextStyle(fontSize: 15, color: Colors.black),
      decoration: InputDecoration(
        fillColor: Colors.white.withOpacity(0.70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        filled: true,
        label: const Text('Enter the city name'),
        suffixIcon: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(20, 30),
            backgroundColor: Colors.white.withOpacity(0.70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: const Text('🔍'),
          onPressed: () => bloc.add(CitySearchDataFetched()),
        ),
      ),
    );
  }
}

class _DetailsButton extends StatelessWidget {
  const _DetailsButton({super.key, required this.data});

  final WeatherModel? data;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white.withOpacity(0.7),
      onPressed: () {
        final transactionData = data;
        if (transactionData == null) return;
        Navigator.of(context)
            .push(
          MaterialPageRoute(
            builder: (context) => WeatherDetailsPage(
              weatherModel: transactionData,
            ),
          ),
        )
            .then((value) {
          if (value is String) {
            debugPrint(value);
          }
        });
      },
      child: const Text('Details Page', style: TextStyle(fontSize: 24, color: Colors.black)),
    );
  }
}

class _CountryCityName extends StatelessWidget {
  const _CountryCityName({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      return Container(
        height: 110,
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                const Text(
                  'Country: ',
                  style: TextStyle(fontSize: 32),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                Expanded(
                  child: Text(
                    state.data?.location.country ?? 'N/A',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Text(
                  'City: ',
                  style: TextStyle(fontSize: 28),
                  textAlign: TextAlign.start,
                ),
                Expanded(
                  child: Text(
                    state.data?.location.name ?? 'N/A',
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}

class _TempCWidget extends StatelessWidget {
  const _TempCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      return WeatherWidget(dataTypeText: 'Temp °C: ', dataText: state.data?.current.tempC ?? 'N/A');
    });
  }
}

class _FeelsLikeCWidget extends StatelessWidget {
  const _FeelsLikeCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      return WeatherWidget(
          dataTypeText: 'Feels like: ', dataText: state.data?.current.feelslikeC ?? 'N/A');
    });
  }
}

class _TempFWidget extends StatelessWidget {
  const _TempFWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      return WeatherWidget(
        dataTypeText: 'Temp °F: ',
        dataText: state.data?.current.tempF ?? 'N/A',
      );
    });
  }
}

class _FeelsLikeFWidget extends StatelessWidget {
  const _FeelsLikeFWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(builder: (context, state) {
      return WeatherWidget(
        dataTypeText: 'Feels like: ',
        dataText: state.data?.current.feelslikeF ?? 'N/A',
      );
    });
  }
}
