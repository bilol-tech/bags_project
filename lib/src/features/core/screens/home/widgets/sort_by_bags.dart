import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sumka_buyicha/barcha_sumkalar.dart';

class SortByBags extends StatefulWidget {
  SortByBags({Key? key}) : super(key: key);

  @override
  State<SortByBags> createState() => _SortByBagsState();
}

class _SortByBagsState extends State<SortByBags> {
  late int itemCount2 = 10;

  final ScrollController _scrollController1 = ScrollController();
  double fractionallySizedBoxWidth = 0.050;

  @override
  void initState() {
    super.initState();
    _scrollController1.addListener(() {
      setState(() {
        fractionallySizedBoxWidth = (_scrollController1.position.pixels /
                    _scrollController1.position.maxScrollExtent) *
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
      color: const Color(0xffEDF3F4),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
            child: Row(
              children: [
                Text(
                  "Sumka bo'yicha",
                  style: GoogleFonts.poppins(
                      fontSize: height * 0.020, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const BarchaSumkalar()));
                  },
                  child: Text(
                    "Barchasi >",
                    style: GoogleFonts.poppins(
                        fontSize: height * 0.014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff178663).withOpacity(0.9)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: height * 0.160,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.140,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      return true;
                    },
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      itemCount: itemCount2,
                      controller: _scrollController1,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final EdgeInsets itemPadding = (index == 0)
                            ? const EdgeInsets.only(left: 25.0)
                            : (index == itemCount2 - 1)
                                ? const EdgeInsets.only(right: 20.0, left: 10)
                                : const EdgeInsets.only(left: 15.0);
                        return Row(
                          children: [
                            Padding(
                              padding: itemPadding,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: height * 0.088,
                                    width: height * 0.088,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffF7FDF9),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(25)),
                                        border: Border.all(
                                            color: const Color(0xff178663)
                                                .withOpacity(0.1))),
                                    child: Container(
                                      margin: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(23)),
                                          border: Border.all(
                                              color: const Color(0xff178663)
                                                  .withOpacity(0.2))),
                                      child: Image.asset(
                                        "assets/images/home_page/menBags1.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  SizedBox(
                                      width: height * 0.095,
                                      child: Center(
                                        child: Text(
                                          "Moychechak",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              fontSize: height * 0.014,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                ],
                              ),
                            )
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
