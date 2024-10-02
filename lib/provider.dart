import 'dart:async';

import 'package:flutter/material.dart';

class EmotionCounter with ChangeNotifier {
  int _angryCount = 0;
  int _sadCount = 0;
  int _confusedCount = 0;
  int _fullCount = 0;
  int _efficiencyCount = 0;

  // Getter
  int get angryCount => _angryCount;
  int get sadCount => _sadCount;
  int get confusedCount => _confusedCount;
  int get fullCount => _fullCount;
  int get efficiencyCount => _efficiencyCount;

  EmotionCounter() {
    _scheduleReset();
  }

  // 각각의 카운트를 증가시키는 메서드
  void incrementAngry() {
    _angryCount++;
    notifyListeners();
  }

  void incrementSad() {
    _sadCount++;
    notifyListeners();
  }

  void incrementConfused() {
    _confusedCount++;
    notifyListeners();
  }

  void incrementFull() {
    _fullCount++;
    notifyListeners();
  }

  void incrementEfficiency() {
    _efficiencyCount++;
    notifyListeners();
  }

  void resetCounts() {
    _angryCount = 0;
    _sadCount = 0;
    _confusedCount = 0;
    _fullCount = 0;
    _efficiencyCount = 0;
    notifyListeners();
  }

  void _scheduleReset() {
    // 현재 시간을 기준으로 자정까지 남은 시간을 계산
    final now = DateTime.now();
    final nextMidnight = DateTime(now.year, now.month, now.day + 1, 0, 0, 0);
    final durationUntilMidnight = nextMidnight.difference(now);

    // 자정에 한 번 초기화를 수행하고, 이후 매일 24시간마다 수행
    Timer(durationUntilMidnight, () {
      resetCounts();
      Timer.periodic(const Duration(days: 1), (Timer t) {
        resetCounts();
      });
    });
  }
}
