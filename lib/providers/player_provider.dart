import 'package:flutter/material.dart';

class PlayerState with ChangeNotifier {
  String _name;
  int _score;

  PlayerState(this._name, this._score);

  String get name => _name;
  int get score => _score;

  void updateScore(int newScore) {
    _score = newScore;
    notifyListeners();
  }

  void updateName(String newName) {
    _name = newName;
    notifyListeners();
  }
}