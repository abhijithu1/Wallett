import 'package:flutter/material.dart';

class Walletprovider extends ChangeNotifier {
  bool _isQuicksend = false;

  bool get isQuicksend => _isQuicksend;
  bool isfromHome = false;
  double? payableAmt = 0;
  double? balance = 10000;
  int? currentIndex ;
  List<String> imageUrls = [
    "https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://media.istockphoto.com/id/856599656/photo/passport-picture-of-a-smiling-turkish-businesswoman.jpg?s=612x612&w=0&k=20&c=dgETy-9neViQs7SATDTOOa80QOhVFcLIomBFRxWVN_8=",
    "https://media.istockphoto.com/id/615279718/photo/businesswoman-portrait-on-white.jpg?s=612x612&w=0&k=20&c=Aa2Vy4faAPe9fAE68Z01jej9YqPqy-RbAteIlF3wcjk=",
    "https://media.istockphoto.com/id/913062404/photo/face-of-businessman-against-white-background.jpg?s=612x612&w=0&k=20&c=Fg0rvqoqvOiH2ayHxsjq2LngGMNLhMryh9mL6njbNfI=",
    "https://media.istockphoto.com/id/515596766/photo/official-portrait-of-a-blonde-woman.jpg?s=612x612&w=0&k=20&c=yDY2nH6SNtfvn4c_BOuuZ27ZkENFevgvYxZD2Plk_vo=",
  ];
  List<String> contactNames = [
      "John",
      "Jenny",
      "Margaret",
      "Nissam",
      "Sophy"
    ];
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
  void clickedFromHome(){
    isfromHome = true;
    notifyListeners();
  }

  void notClickedFromHome(){
    isfromHome = false;
    notifyListeners();
  }

  void undoclicksend() {
    _isQuicksend = false;
    notifyListeners();
  }
}
