import 'package:flutter/material.dart';
import 'package:webtoon_flutter/screens/home_screen.dart';
import 'package:webtoon_flutter/services/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
