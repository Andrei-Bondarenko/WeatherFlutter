import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget(
      {super.key, required this.dataTypeText, required this.dataText});

  final String dataTypeText;
  final String dataText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
                 Text(
                  dataTypeText,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
                Text(
                  dataText,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.end,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
