// ignore: must_be_immutable
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BannerImagePart extends StatelessWidget {
  BannerImagePart({
    Key? key,
  }) : super(key: key);

  List<String> imagePaths = [
    "assets/images/home_page/IMG_1226.PNG",
    "assets/images/home_page/IMG_1227.PNG",
    "assets/images/home_page/IMG_1228.PNG",
  ];

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    return SizedBox(
      height: height * 0.15,
      width: double.infinity,
      child: Swiper(
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
        autoplay: true,
        itemCount: imagePaths.length,
        scrollDirection: Axis.horizontal,
        layout: SwiperLayout.DEFAULT,
        itemWidth: height * 0.12,
        itemHeight: height * 0.14,
        viewportFraction: 0.8,
        scale: 0.85,
        fade: 0.5,
        duration: 800,
        curve: Curves.linear,
      ),
    );
  }
}
