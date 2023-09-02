import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_example/constants.dart';
import 'package:weather_example/screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Spacer(),
            Image.asset("assets/cloud-rain-sun.png"),
            const Spacer(flex: 4),
            const Text.rich(
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(text: "Weather "),
                  TextSpan(
                    text: "News \n& Feeds",
                    style: TextStyle(
                      color: kprimaryColor,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: kprimaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
              child: const Text(
                "Get start",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
