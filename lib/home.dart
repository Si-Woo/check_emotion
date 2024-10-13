import 'package:check_emotion/result_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int angryCount = 0;
  int sadCount = 0;
  int confusedCount = 0;
  int fullCount = 0;
  int efficiencyCount = 0;

  // 각각의 이모지 클릭 시 애니메이션 효과를 위한 변수
  double _scaleAngry = 1.0;
  double _scaleSad = 1.0;
  double _scaleConfused = 1.0;
  double _scaleFull = 1.0;
  double _scaleEfficiency = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {
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
              child: const Text("결과보기"))
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      angryCount++;
                      _scaleAngry = 2;
                    });
                    // 애니메이션 효과 후 원래 크기로 돌아오게
                    Future.delayed(const Duration(milliseconds: 200), () {
                      setState(() {
                        _scaleAngry = 1.0;
                      });
                    });
                  },
                  child: AnimatedScale(
                    scale: _scaleAngry,
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset('images/stress.png'),
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      sadCount++;
                      _scaleSad = 2;
                    });
                    Future.delayed(const Duration(milliseconds: 200), () {
                      setState(() {
                        _scaleSad = 1.0;
                      });
                    });
                  },
                  child: AnimatedScale(
                    scale: _scaleSad,
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset('images/sad.png'),
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      confusedCount++;
                      _scaleConfused = 2;
                    });
                    Future.delayed(const Duration(milliseconds: 200), () {
                      setState(() {
                        _scaleConfused = 1.0;
                      });
                    });
                  },
                  child: AnimatedScale(
                    scale: _scaleConfused,
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset('images/question.png'),
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      fullCount++;
                      _scaleFull = 2;
                    });
                    Future.delayed(const Duration(milliseconds: 200), () {
                      setState(() {
                        _scaleFull = 1.0;
                      });
                    });
                  },
                  child: AnimatedScale(
                    scale: _scaleFull,
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset('images/heart.png'),
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      efficiencyCount++;
                      _scaleEfficiency = 2;
                    });
                    Future.delayed(const Duration(milliseconds: 200), () {
                      setState(() {
                        _scaleEfficiency = 1.0;
                      });
                    });
                  },
                  child: AnimatedScale(
                    scale: _scaleEfficiency,
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset('images/ballons.png'),
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
