import 'package:flutter/material.dart';
import 'dart:math';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styles = [
      {
        'hair': 'Low Fade with Textured Top',
        'dress': 'Oversized T-shirt + Jeans',
        'color': 'Black, Olive Green',
      },
      {
        'hair': 'Side Part with Taper Fade',
        'dress': 'Shirt + Slim Fit Pants',
        'color': 'Navy Blue, White',
      },
      {
        'hair': 'Buzz Cut',
        'dress': 'Minimal Hoodie + Joggers',
        'color': 'Grey, Charcoal',
      },
    ];

    final result = styles[Random().nextInt(styles.length)];

    return Scaffold(
      appBar: AppBar(title: const Text('Your AURA')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '✨ Hairstyle',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(result['hair']!),

            const SizedBox(height: 20),
            const Text(
              '👔 Dressing Style',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(result['dress']!),

            const SizedBox(height: 20),
            const Text(
              '🎨 Best Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(result['color']!),

            const Spacer(),
            Center(
              child: Text(
                'AI-generated suggestion',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
