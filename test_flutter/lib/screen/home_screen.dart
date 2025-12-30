import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Главный экран')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (_, i) => Card(
          child: ListTile(
            leading: const Icon(Icons.check_circle),
            title: Text('Контент #${i + 1}'),
          ),
        ),
      ),
    );
  }
}
