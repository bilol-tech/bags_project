import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfShops extends StatefulWidget {
  const ListOfShops({Key? key}) : super(key: key);

  @override
  State<ListOfShops> createState() => _ListOfShopsState();
}

class _ListOfShopsState extends State<ListOfShops> {
  final ScrollController _scrollController2 = ScrollController();
  double fractionallySizedBoxWidth = 0.050;
  late int itemCount2 = 10;

  @override
  void initState() {
    super.initState();
    _scrollController2.addListener(() {
      setState(() {
        // Calculate the widthFactor based on scroll position
        fractionallySizedBoxWidth = (_scrollController2.position.pixels /
                    _scrollController2.position.maxScrollExtent) *
                0.6 +
            0.4;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    return Container(
      color: const Color(0xffFFFFFF),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
            child: Row(
              children: [
                Text(
                  "Sumka do'konlar",
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
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: height * 0.195,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.180,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      return true;
                    },
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: itemCount2,
                      controller: _scrollController2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final EdgeInsets itemPadding = (index == 0)
                            ? const EdgeInsets.only(left: 20.0)
                            : (index == itemCount2 - 1)
                                ? const EdgeInsets.only(right: 20.0, left: 10)
                                : const EdgeInsets.only(left: 15.0);
                        return Row(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: itemPadding,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: height * 0.11,
                                        width: height * 0.19,
                                        decoration: BoxDecoration(
                                          // color: const Color(0xffF7FDF9),
                                          image: DecorationImage(
                                              image: AssetImage(index % 2 == 0
                                                  ? "assets/images/home_page/shop_logo.jpeg"
                                                  : "assets/images/home_page/logo1_shop.jpeg"),
                                              fit: BoxFit.cover),
                                          color: Colors.red,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      SizedBox(
                                          width: height * 0.18,
                                          child: Text(
                                            "Mir Sumok Mir Sumok Mir Sumok",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                                fontSize: height * 0.014,
                                                fontWeight: FontWeight.w500),
                                          )),
                                      SizedBox(
                                          width: height * 0.18,
                                          child: Text(
                                            "61 ta mahsulot",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.poppins(
                                                fontSize: height * 0.014,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          )),
                                      const SizedBox(
                                        height: 14.0,
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 6,
                                  left: 27,
                                  child: Container(
                                    width: height * 0.055,
                                    height: height * 0.020,
                                    decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? const Color(0xff178863)
                                                .withOpacity(0.9)
                                            : const Color(0xffE3003A),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Center(
                                      child: Text(
                                        (index % 2 == 0) ? "24/7" : "Yopiq",
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xffFFFFFF),
                                            fontWeight: FontWeight.w500,
                                            fontSize: height * 0.013),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: height * 0.115,
                    child: Stack(
                      children: [
                        Container(
                          height: 1.5,
                          color: const Color(0xffE7EDEE),
                        ),
                        FractionallySizedBox(
                          widthFactor: fractionallySizedBoxWidth,
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 1.5,
                            color: const Color(0xff86A19A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
