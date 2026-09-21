import 'package:flutter/material.dart';
import 'package:lab/Screens/core_widgets_demo.dart';
import 'package:lab/Screens/input_controls_demo.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: const Center(child: Text('Homepage')),
        leading: const Icon(Icons.menu),
        actions: [
          TextButton(
            style: const ButtonStyle(),
            onPressed: () {},
            child: const Text('Login'),
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
          ],
        ),
      ),
    );
  }
}
