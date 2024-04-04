import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePart extends StatelessWidget {
  const WelcomePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
      child: Row(
        children: [
          Container(
            height: height * 0.040,
            width: height * 0.040,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffB7E2D6),
                image: DecorationImage(
                  image: AssetImage("assets/images/home_page/me.jpeg"),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Xush Kelibsiz!",
                style: GoogleFonts.roboto(
                    fontSize: height * 0.013, color: const Color(0xff696E6D)),
              ),
              Text(
                "Bilol Abdunazarov",
                style: GoogleFonts.poppins(fontSize: height * 0.015),
              ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.favorite,
            color: const Color(0xff178663),
            size: height * 0.026,
          ),
          const SizedBox(
            width: 7,
          ),
          Icon(
            Icons.notifications,
            color: const Color(0xff178663),
            size: height * 0.026,
          ),
        ],
      ),
    );
  }
}
