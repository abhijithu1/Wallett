import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    List<String> transactions = ["Cash Deposit", "Transfer Fund"];
    String transactionState = transactions[1];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          setState(() {
            if(index.isEven){
              transactionState = transactions[1];
            }
            else{
              transactionState = transactions[0];
            }
          });
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: transactionState == transactions[0]
                    ? const Color.fromARGB(255, 255, 232, 23)
                    : const Color.fromARGB(255, 255, 108, 67),
                radius: 30,
                child: const Icon(
                  Icons.arrow_upward,
                ),
              ),
            ),
          );
        }));
  }
}
