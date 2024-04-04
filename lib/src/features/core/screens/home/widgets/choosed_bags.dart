import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoosedBags extends StatelessWidget {
  const ChoosedBags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    return Container(
      margin: EdgeInsets.only(top: height * 0.022),
      width: double.infinity,
      color: const Color(0xffEDF3F4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 18.0, right: 18.0, top: 10.0, bottom: 10.0),
            child: Row(
              children: [
                Text(
                  "Tanlangan sumkalar",
                  style: GoogleFonts.poppins(
                      fontSize: height * 0.020, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  "Barchasi >",
                  style: GoogleFonts.poppins(
                      fontSize: height * 0.014,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff178663).withOpacity(0.9)),
                )
              ],
            ),
          ),
          SizedBox(
              height: height * 0.52,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.20,
                            width: height * 0.20,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home_page/momsBag.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Onajonlar uchun",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1137 ta mahsulot",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: height * 0.015,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.20,
                            width: height * 0.20,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home_page/momsBag.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Onajonlar uchun",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1137 ta mahsulot",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.20,
                            width: height * 0.20,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home_page/momsBag.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Onajonlar uchun",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1137 ta mahsulot",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: height * 0.015,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.20,
                            width: height * 0.20,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/home_page/momsBag.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Onajonlar uchun",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1137 ta mahsulot",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.013,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
