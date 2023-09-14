import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> _colorCards = const [
      Color.fromARGB(255, 223, 224, 222),
      Color.fromARGB(255, 245, 102, 27),
      Color.fromARGB(255, 246, 207, 87),
      Color.fromARGB(255, 226, 221, 204),
      Color.fromARGB(255, 234, 220, 202)
    ];
    List<String> imageUrls = [
      "https://images.pexels.com/photos/5490276/pexels-photo-5490276.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://media.istockphoto.com/id/856599656/photo/passport-picture-of-a-smiling-turkish-businesswoman.jpg?s=612x612&w=0&k=20&c=dgETy-9neViQs7SATDTOOa80QOhVFcLIomBFRxWVN_8=",
      "https://media.istockphoto.com/id/615279718/photo/businesswoman-portrait-on-white.jpg?s=612x612&w=0&k=20&c=Aa2Vy4faAPe9fAE68Z01jej9YqPqy-RbAteIlF3wcjk=",
      "https://media.istockphoto.com/id/913062404/photo/face-of-businessman-against-white-background.jpg?s=612x612&w=0&k=20&c=Fg0rvqoqvOiH2ayHxsjq2LngGMNLhMryh9mL6njbNfI=",
      "https://media.istockphoto.com/id/515596766/photo/official-portrait-of-a-blonde-woman.jpg?s=612x612&w=0&k=20&c=yDY2nH6SNtfvn4c_BOuuZ27ZkENFevgvYxZD2Plk_vo=",
      // "https://ibb.co/gtnLJxd"
    ];
    List<String> contactNames = [
      "John",
      "Jenny",
      "Margaret",
      "Nissam",
      "Sophy"
    ];
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
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: _colorCards[index],
                    backgroundImage: NetworkImage(imageUrls[index]),
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
