import 'package:flutter/material.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({
    super.key,
    this.url,
    this.name,
    this.payment,
  });

  @override
  final String? url;
  final String? name;
  final String? payment;
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(),
    ));
  }
}
