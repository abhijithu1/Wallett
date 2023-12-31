import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/providers/wallet_provider.dart';
import 'package:mytodo/widgets/quick_pay_card.dart';
import 'package:mytodo/widgets/quick_send_card.dart';
import 'package:provider/provider.dart';

class QuickSend extends StatefulWidget {
  const QuickSend({super.key,this.index});
  final int? index;
  @override
  State<QuickSend> createState() => _QuickSendState();
}

class _QuickSendState extends State<QuickSend> {
  
  @override
  Widget build(BuildContext context) {
    Provider.of<Walletprovider>(context).currentIndex = widget.index;
    bool isquickPay = Provider.of<Walletprovider>(context).isQuicksend;
    double? bal = Provider.of<Walletprovider>(context).balance;
    double? payableAmt = Provider.of<Walletprovider>(context).payableAmt;
    List<Widget> cards = [
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: HomeScreenCard(bal: bal,payAmount: payableAmt,),
      ),
      const Padding(
          padding: EdgeInsets.only(bottom: 0, right: 10, left: 10),
          child: QuickPayCard())
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      "Quick Send",
                      style: GoogleFonts.quicksand(
                          fontSize: 45,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              // height: 518,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  left: 4,
                  right: 4,
                  bottom: 0,
                ),
                child: isquickPay == false ? cards[1] : cards[0],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
