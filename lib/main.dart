import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const GradientText(
                    text: "Network Lottie Animations",
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.network(
                      "https://assets2.lottiefiles.com/packages/lf20_yefgzddc.json",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.network(
                      "https://assets7.lottiefiles.com/packages/lf20_jbrw3hcz.json",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.network(
                      "https://assets3.lottiefiles.com/packages/lf20_l2xant2x.json",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.network(
                      "https://assets7.lottiefiles.com/private_files/lf30_sn16ycds.json",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.network(
                      "https://assets7.lottiefiles.com/packages/lf20_hcae8wxn.json",
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.network(
                      "https://assets2.lottiefiles.com/packages/lf20_4pbyzxfg.json",
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(height: 20),
                  const GradientText(text: "assets Lottie Animations"),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.asset("assets/95171-colors.json"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.asset("assets/89454-workout-santa.json"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.asset("assets/93795-dog-car-ride.json"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.asset("assets/93809-moon.json"),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Lottie.asset("assets/91045-lunch-time.json"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        colors: [
          Colors.deepOrange.shade700,
          Colors.green.shade800,
        ],
        radius: 4,
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
