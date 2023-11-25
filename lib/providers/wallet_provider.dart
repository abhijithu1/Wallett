import 'package:flutter/material.dart';

class Walletprovider extends ChangeNotifier {
  bool _isQuicksend = false;

  bool get isQuicksend => _isQuicksend;
  bool isfromHome = false;
  double? payableAmt = 0;
  double? balance = 10000;
  int? currentIndex;
  List<String> imageUrls = [
    "https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?q=80&w=1794&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1530785602389-07594beb8b73?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  List<String> contactNames = ["John", "Jenny", "Nissam", "Margaret", "Sophy"];
  // List <Map<String,double>> transactions = [
  //   {"Cash Deposit": 5412.0},
  //   {"Transfer Fund": 200.23},
  //   {"Cash Deposit": 3245.12},
  //   {"Transfer Fund": 32.4},
  //   {"Cash Deposit": 52.0},
  // ];
  // void addTransaction(String typeOftransaction,double payableamount){
  //   transactions.add({typeOftransaction:payableamount});
  // }

  void clickedSend() {
    _isQuicksend = true;
    notifyListeners();
  }

  void clickedFromHome() {
    isfromHome = true;
    notifyListeners();
  }

  void notClickedFromHome() {
    isfromHome = false;
    notifyListeners();
  }

  void undoclicksend() {
    _isQuicksend = false;
    notifyListeners();
  }
}
