import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class QuickPayCard extends StatelessWidget {
  const QuickPayCard({super.key});

  @override
  Widget build(BuildContext context) {
    double bal = 8251.36;
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
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "\$254.99",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
            GridView.count(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 10),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              childAspectRatio: 1.2,
              children: [
                NumberButton(
                  displaytext: "1",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "2",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "3",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "4",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "5",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "6",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "7",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "8",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "9",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: ".",
                  onTap: () {},
                ),
                NumberButton(
                  displaytext: "0",
                  onTap: () {},
                ),
                NumberButton(displaytext: "X", onTap: () {})
              ],
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
                          onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final String displaytext;
  final VoidCallback onTap;
  const NumberButton(
      {super.key, required this.displaytext, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
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
          child: Center(
            child: Text(
              displaytext,
              style:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
