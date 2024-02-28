import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  void resetCounter() {
    counter = 0;
    setState(() {});
  }

  void incrementCounter() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                _zikirMatik(),
                _counter(),
                _incrementCounter(),
                _resetCounter(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Positioned _resetCounter() {
    return Positioned(
      bottom: 114,
      right: 76,
      child: GestureDetector(
        onTap: resetCounter,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
    );
  }

  Image _zikirMatik() {
    return Image.asset(
      "assets/images/zikirmatik.png",
      width: 300,
    );
  }

  Positioned _counter() {
    return Positioned(
      top: 46,
      right: 80,
      child: Text(
        counter.toString(),
        style: const TextStyle(
            fontFamily: "Digital7", color: Colors.white, fontSize: 50),
      ),
    );
  }

  Positioned _incrementCounter() {
    return Positioned(
      bottom: 30,
      child: GestureDetector(
        onTap: incrementCounter,
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
      ),
    );
  }
}
