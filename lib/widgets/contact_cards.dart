import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/providers/wallet_provider.dart';
import 'package:mytodo/screens/payment_done.dart';
import 'package:mytodo/screens/quick_send.dart';
import 'package:provider/provider.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> _colorCards = const [
      Color.fromARGB(255, 223, 224, 222),
      Color.fromARGB(255, 245, 102, 27),
      Color.fromARGB(255, 246, 207, 87),
      Color.fromARGB(255, 226, 221, 204),
      Color.fromARGB(255, 234, 220, 202)
    ];
    bool isPayment = Provider.of<Walletprovider>(context).isQuicksend;
    List<String> imageUrls = Provider.of<Walletprovider>(context).imageUrls;
    List<String> contactNames =
        Provider.of<Walletprovider>(context).contactNames;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: ((context, index) {
        return SizedBox(
          width: 100,
          child: Card(
            elevation: 0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: isPayment == true
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentDone(
                                  name: contactNames[index],
                                  payment: Provider.of<Walletprovider>(context)
                                      .payableAmt
                                      .toString(),
                                  urli: imageUrls[index],
                                ),
                              ),
                            );
                          }
                        : () {
                            Provider.of<Walletprovider>(context, listen: false)
                                .clickedFromHome();
                            Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  ((context, animation, secondaryAnimation) =>
                                      QuickSend(
                                        index: index,
                                      )),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = Offset(0.0, 1.0);
                                const end = Offset.zero;
                                final tween = Tween(begin: begin, end: end);
                                final offsetAnimation = animation.drive(tween);
                                return SlideTransition(
                                  position: offsetAnimation,
                                  child: child,
                                );
                              },
                            ));
                          },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: _colorCards[index],
                      backgroundImage: NetworkImage(imageUrls[index]),
                    ),
                  ),
                ),
                Text(
                  contactNames[index],
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
