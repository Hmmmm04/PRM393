import 'package:flutter/material.dart';
import 'package:lab/Screens/core_widgets_demo.dart';
import 'package:lab/Screens/input_controls_demo.dart';
import 'package:lab/Screens/layout_demo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var currentValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: currentValue ? Colors.blueAccent : Colors.greenAccent,
        title: const Center(child: Text('Homepage')),
        leading: const Icon(Icons.menu),
        actions: [
          Switch(
            value: currentValue,
            onChanged: (value) {
              setState(() {
                currentValue = value;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CoreWidgetsDemo(),
                  ),
                );
              },
              child: const Text('Exercise 1 - Core Widgets Demo'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InputControlsDemo(),
                  ),
                );
              },
              child: const Text('Exercise 2 - Input Controls Demo'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LayoutDemo(),
                  ),
                );
              },
              child: const Text('Exercise 3 - Layout Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
