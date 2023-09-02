import 'package:flutter/material.dart';
import 'package:weather_example/constants.dart';

class WeatherInfo extends StatelessWidget {
  final String image;
  final int temp;
  final String time;
  const WeatherInfo({
    super.key,
    required this.image,
    required this.temp,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(
        right: 10,
        top: 10,
        bottom: 15,
        left: 20,
      ),
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(time),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$temp",
                  style: const TextStyle(fontSize: 18),
                ),
                const TextSpan(
                  text: "°C",
                  style: TextStyle(
                    fontSize: 12,
                    color: kprimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
