import 'package:flutter/material.dart';
import 'dart:math';

class ContactCardCreditCard extends StatelessWidget {
  const ContactCardCreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> _colorCards = const [
      Color.fromARGB(255, 223, 224, 222),
      Color.fromARGB(255, 245, 102, 27),
      Color.fromARGB(255, 246, 207, 87),
      Color.fromARGB(255, 226, 221, 204),
      Color.fromARGB(255, 234, 220, 202),
      Color.fromARGB(255, 90, 255, 134),
      Color.fromARGB(255, 161, 231, 255)
    ];

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          Random random = Random();
          int randomNumber = random.nextInt(6);
          return Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 0),
            child: SizedBox(
              width: 150,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                color: _colorCards[randomNumber],
                child: const Column(children: []),
              ),
            ),
          );
        });
  }
}
