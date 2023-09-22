import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytodo/providers/wallet_provider.dart';
import 'package:provider/provider.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.ontapcontactfunc,
    
  });
  final ontapcontactfunc;
  
  @override
  Widget build(BuildContext context) {
    List<Color> _colorCards = const [
      Color.fromARGB(255, 223, 224, 222),
      Color.fromARGB(255, 245, 102, 27),
      Color.fromARGB(255, 246, 207, 87),
      Color.fromARGB(255, 226, 221, 204),
      Color.fromARGB(255, 234, 220, 202)
    ];
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
                    onTap: ontapcontactfunc,
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
