import 'package:check_emotion/provider.dart';
import 'package:check_emotion/result_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 각 이모지의 클릭 카운트를 관리할 변수
  int angryCount = 0;
  int sadCount = 0;
  int confusedCount = 0;
  int fullCount = 0;
  int efficiencyCount = 0;

  @override
  Widget build(BuildContext context) {
    final emotionCounter = Provider.of<EmotionCounter>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              angry: angryCount,
                              sad: sadCount,
                              confused: confusedCount,
                              full: fullCount,
                              efficiency: efficiencyCount,
                            )));
              },
              child: Icon(
                Icons.abc,
                color: Colors.yellow,
              ))
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    angryCount++;
                    emotionCounter.incrementAngry();
                  },
                  child: const Text(
                    "\u{1F621}",
                    style: TextStyle(fontSize: 200),
                  ),
                ),
                const Text(
                  "스트레스!",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    sadCount++;
                    emotionCounter.incrementSad();
                  },
                  child: const Text(
                    "\u{1F62D}",
                    style: TextStyle(fontSize: 200),
                  ),
                ),
                const Text(
                  "슬퍼",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    confusedCount++;
                    emotionCounter.incrementConfused();
                  },
                  child: const Text(
                    "\u{1F914}",
                    style: TextStyle(fontSize: 200),
                  ),
                ),
                const Text(
                  "헷갈려",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    fullCount++;
                    emotionCounter.incrementFull();
                  },
                  child: const Text(
                    "\u{1F917}",
                    style: TextStyle(fontSize: 200),
                  ),
                ),
                const Text(
                  "충만해",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    efficiencyCount++;
                    emotionCounter.incrementEfficiency();
                  },
                  child: const Text(
                    "\u{1F603}",
                    style: TextStyle(fontSize: 200),
                  ),
                ),
                const Text(
                  "효율감이 높아",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
