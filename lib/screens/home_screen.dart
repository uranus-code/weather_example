import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_example/constants.dart';
import 'package:weather_example/widgets/chart.dart';
import 'package:weather_example/widgets/today_info.dart';
import 'package:weather_example/widgets/weather_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentType = "Today";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.setting_4),
        ),
        title: const Text(
          "Weather Forcast",
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TodayInfo(),
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      currentType = "Today";
                    }),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: currentType == "Today"
                            ? kprimaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () => setState(() {
                      currentType = "Tomorrow";
                    }),
                    child: Text(
                      "Tomorrow",
                      style: TextStyle(
                        color: currentType == "Tomorrow"
                            ? kprimaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () => setState(() {
                      currentType = "Next 7 days";
                    }),
                    child: Text(
                      "Next 7 days",
                      style: TextStyle(
                        color: currentType == "Next 7 days"
                            ? kprimaryColor
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  children: const [
                    WeatherInfo(
                      temp: 26,
                      time: "10 AM",
                      image: "assets/cloud-zap.png",
                    ),
                    WeatherInfo(
                      temp: 20,
                      time: "11 AM",
                      image: "assets/cloud-rain.png",
                    ),
                    WeatherInfo(
                      temp: 32,
                      time: "12 PM",
                      image: "assets/cloud-sun.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const LineChartSample2(),
            ],
          ),
        ),
      ),
    );
  }
}
