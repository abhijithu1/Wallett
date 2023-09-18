import 'package:flutter/material.dart';

class Walletprovider extends ChangeNotifier{
  bool _isQuicksend = false;

  bool get isQuicksend => _isQuicksend;

  void clickedSend(){
    _isQuicksend = true;
    notifyListeners();
  }

  void undoclicksend(){
    _isQuicksend = false;
    notifyListeners();
  }

  
}