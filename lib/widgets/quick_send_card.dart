import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/providers/wallet_provider.dart';
import 'package:mytodo/widgets/contact_cards.dart';
import 'package:mytodo/widgets/credit_cards.dart';
import 'package:provider/provider.dart';

class HomeScreenCard extends StatefulWidget {
  const HomeScreenCard({super.key, required this.bal, required this.payAmount});

  final double? bal;
  final double? payAmount;

  @override
  State<HomeScreenCard> createState() => _HomeScreenCardState();
}

class _HomeScreenCardState extends State<HomeScreenCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      color: Colors.white,
      elevation: 0,
      child: Column(
        children: [
          SizedBox(
            height: 85,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "\$${widget.payAmount}",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
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
                Text(
                  "Available Balance : \$${widget.bal}",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: Text(
                  "Contacts",
                  style: GoogleFonts.quicksand(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 120,
            child: ContactCard(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 13),
            child: SizedBox(
              height: 38,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "My Cards",
                        style: GoogleFonts.quicksand(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: TextButton.icon(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 163, 214, 248),
                          ),
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        label: Text(
                          "Add Card",
                          style: GoogleFonts.quicksand(
                              fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const SizedBox(
            height: 130,
            child: ContactCardCreditCard(),
          ),
          // const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: SizedBox(
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
                            Provider.of<Walletprovider>(context, listen: false)
                                .undoclicksend();
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
                          onPressed: () {},
                          child: Text(
                            "Send Money",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
