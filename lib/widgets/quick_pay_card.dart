import 'package:mytodo/providers/wallet_provider.dart';
import 'package:mytodo/screens/payment_done.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/screens/home_screen.dart';

class QuickPayCard extends StatefulWidget {
  const QuickPayCard({super.key});

  @override
  State<QuickPayCard> createState() => _QuickPayCardState();
}

class _QuickPayCardState extends State<QuickPayCard> {
  List<String> buttons = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    ".",
    "0",
    "X"
  ];
  String money = "";
  double? moneyDouble = 0;

  @override
  Widget build(BuildContext context) {
    double? bal = Provider.of<Walletprovider>(context).balance;

    int? indexProv = Provider.of<Walletprovider>(context).currentIndex;
    int newindex;
    if (indexProv != null) {
      newindex = indexProv;
    } else {
      newindex = 0;
    }
    return SizedBox(
      height: double.infinity,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        color: Colors.white,
        elevation: 5,
        child: ListView(
          children: [
            SizedBox(
              height: 85,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "\$$money",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    child: Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text(
                      "Available Balance : \$$bal",
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            GridView.builder(
              itemCount: buttons.length,
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 10),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0,
                  childAspectRatio: 1.2,
                  mainAxisSpacing: 0),
              itemBuilder: ((context, index) {
                return NumberButton(
                    displaytext: buttons[index],
                    onTap: index != 11
                        ? () {
                            setState(() {
                              money += buttons[index];
                            });
                          }
                        : () {
                            setState(() {
                              money = money.substring(0, money.length - 1);
                            });
                          });
              }),
            ),
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: double.infinity,
                        child: TextButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          },
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: double.infinity,
                        child: TextButton(
                          style: const ButtonStyle(
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
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(
                                255,
                                7,
                                42,
                                200,
                              ),
                            ),
                          ),
                          onPressed: () {
                            moneyDouble = double.tryParse(money);
                            if (moneyDouble == null || moneyDouble == 0) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("its null")));
                            }
                            moneyDouble! > bal!
                                ? ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("You cant do that")))
                                : ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text("Cool dude")));
                            if (moneyDouble! < bal) {
                              Provider.of<Walletprovider>(context,
                                      listen: false)
                                  .payableAmt = moneyDouble;
                              Provider.of<Walletprovider>(context,
                                              listen: false)
                                          .isfromHome ==
                                      true
                                  ? Provider.of<Walletprovider>(context,
                                          listen: false)
                                      .clickedSend()
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PaymentDone(
                                          name: Provider.of<Walletprovider>(
                                                  context)
                                              .contactNames[newindex],
                                          urli: Provider.of<Walletprovider>(
                                                  context)
                                              .imageUrls[newindex],
                                          payment: moneyDouble.toString(),
                                        ),
                                      ),
                                    );
                            }
                          },
                          child: Text(
                            "Next",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final String displaytext;
  final onTap;
  const NumberButton(
      {super.key, required this.displaytext, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
        child: TextButton(
          style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.transparent)),
          onPressed: onTap,
          child: Text(
            displaytext,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ));
  }
}
