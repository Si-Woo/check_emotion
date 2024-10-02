import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class ResultPage extends StatelessWidget {
  final int angry, sad, confused, full, efficiency;
  const ResultPage({
    super.key,
    required this.angry,
    required this.sad,
    required this.confused,
    required this.full,
    required this.efficiency,
  });

  @override
  Widget build(BuildContext context) {
    final emotionCounter = Provider.of<EmotionCounter>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "스트레스 카운트: $angry",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "슬픔 카운트: $sad",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "헷갈림 카운트: $confused",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "충만 카운트: $full",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "효율감 카운트: $efficiency",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
