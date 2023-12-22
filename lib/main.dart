import 'package:flutter/material.dart';
import 'package:target/screens/details/detail.dart';
import 'package:target/screens/explore/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Target',
      theme: ThemeData(fontFamily: 'AirbnbCeareal'),
      routes: {
        '/': (context) => const Explore(),
        '/detail': (context) => const Detail(),
      },
    );
  }
}
