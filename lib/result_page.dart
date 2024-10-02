import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
              "스트레스 카운트: ${emotionCounter.angryCount}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "슬픔 카운트: ${emotionCounter.sadCount}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "헷갈림 카운트: ${emotionCounter.confusedCount}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "충만 카운트: ${emotionCounter.fullCount}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "효율감 카운트: ${emotionCounter.efficiencyCount}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
