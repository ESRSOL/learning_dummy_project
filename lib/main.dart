import 'package:flutter/material.dart';
import 'package:learning_dummy_project/learing_screens.dart';
import 'package:learning_dummy_project/learing_screens/converting_timestamp_to_timezone_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Dummy Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LearningScreen(),
    );
  }
}
