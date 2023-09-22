import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/providers/wallet_provider.dart';
import 'package:provider/provider.dart';

class PaymentDone extends StatelessWidget {
  const PaymentDone({
    super.key,
    this.urli,
    this.name,
    this.payment,
  });

  final String? urli;
  final String? name;
  final String? payment;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(urli!),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            name!,
            style: GoogleFonts.quicksand(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            "Done Payment of ",
            style: GoogleFonts.quicksand(fontSize: 25),
          ),
          const SizedBox(height: 10),
          Text(
            "\$$payment",
            style: GoogleFonts.quicksand(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Image.asset(
            "lib/assets/images/cheque.gif",
            height: 200,
          ),
          const SizedBox(height: 35),
          TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      40,
                    ),
                  ),
                ),
              ),
            ),
            onPressed: () {
              Provider.of<Walletprovider>(context, listen: false)
                  .undoclicksend();
              Navigator.pop(context);
            },
            child: Text(
              "Done",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
