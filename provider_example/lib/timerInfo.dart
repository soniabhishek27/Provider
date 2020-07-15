import 'package:flutter/cupertino.dart';

class timerInfo extends ChangeNotifier

{

  int _remainingTime = 60;

  int getRemainingTime() => _remainingTime;


  updateRemainingTime()
  {
    _remainingTime--;
    notifyListeners();


  }

}