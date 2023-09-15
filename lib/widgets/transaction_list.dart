import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    List<double> transferAmounts = [5412, 200.23, 3245.12, 32.4, 52];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: index.isEven
                    ? const Color.fromARGB(255, 255, 199, 1)
                    : const Color.fromARGB(255, 162, 214, 249),
                radius: 30,
                child: index.isEven
                    ? const Icon(
                        Icons.arrow_downward,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.arrow_upward,
                        color: Colors.black,
                      ),
              ),
              title: index.isEven
                  ? Text(
                      "Cash Deposit",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  : Text(
                      "Transfer Fund",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
              subtitle: Text(
                "${now.year} ${months[now.month - 1]} ${now.day}",
                style: GoogleFonts.quicksand(fontWeight: FontWeight.w400),
              ),
              trailing: Text(
                "\$${transferAmounts[index]}",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          );
        }));
  }
}
