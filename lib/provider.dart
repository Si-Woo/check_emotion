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
}
