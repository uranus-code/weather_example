import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_example/constants.dart';

class TodayInfo extends StatelessWidget {
  const TodayInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Sat, 3 Aug",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "30",
                      style: TextStyle(fontSize: 72),
                    ),
                    TextSpan(
                      text: "°C",
                      style: TextStyle(
                        fontSize: 32,
                        color: kprimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/sun-storm.png",
                width: 150,
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Iconsax.location,
                color: kprimaryColor,
              ),
              SizedBox(width: 5),
              Text("Allentown, New Mexico 31134")
            ],
          )
        ],
      ),
    );
  }
}
