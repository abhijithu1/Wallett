import 'package:flutter/material.dart';

class QuickPayCard extends StatelessWidget {
  const QuickPayCard({super.key});

  @override
  Widget build(BuildContext context) {
    double bal = 8251.36;
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
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "\$254.99",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0,top: 20),
            child: Expanded(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
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
            ),
          )
        ],
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
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(width: 20, height: 20),
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
              child: Text(displaytext),
            )),
      ),
    );
  }
}
