import 'package:flutter/material.dart';
import 'package:knighthood_heroes/screens/heroes.dart';

ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 149, 255));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: const Heroes(),
    );
  }
}
