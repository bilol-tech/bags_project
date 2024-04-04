import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant/sizes.dart';
import '../../../../../constant/style_colors.dart';

class BarchaSumkalar extends StatelessWidget {
  const BarchaSumkalar({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;

    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = (screenWidth / 105).floor();

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          }
        ,child: Icon(Icons.arrow_back_ios, color: AppColors.appMainColorGreen, size: height * 0.022)),
        actions: [
          Icon(Icons.search, size: height * 0.030,),
          const SizedBox(width: 11,),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sumka bo'yicha", style: AppStyles.w600(fontSize: height * 0.020),),
              const SizedBox(height: tDefaultSize - 20,),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount, // Number of columns
                    crossAxisSpacing: 0.0, // Spacing between columns
                    mainAxisSpacing: 0.0, // Spacing between rows
                  ),
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.098,
                          width: height * 0.098,
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
                          height: 4,
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
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
