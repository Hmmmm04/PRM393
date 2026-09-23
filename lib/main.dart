import 'package:flutter/material.dart';
import 'package:lab/Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: {
        '/': (context) => const Homepage(),
      },
    );
  }
}

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("This is the first time with flutter!"),
    );
  }
}
