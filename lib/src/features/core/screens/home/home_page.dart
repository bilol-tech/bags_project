import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/bags_for_speacial_days.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/banner_image.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/choosed_bags.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/list_of_shops.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/new_bags.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/search_bar.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/sort_by_bags.dart';
import 'package:online_bags/src/features/core/screens/home/widgets/welcome_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearchFocused = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const WelcomePart(),
            const SizedBox(height: 20),
            Expanded(
              child: RefreshIndicator(
                color: const Color(0xff168865),
                backgroundColor: const Color(0xffFCF6F9),
                onRefresh: () async {
                  // Your refresh logic here
                  await Future<void>.delayed(const Duration(seconds: 2));
                  setState(() {});
                },
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ // Show SearchBarPart() when focused
                      const SearchBarPart(),
                      SizedBox(height: height * 0.020),
                      BannerImagePart(),
                      SizedBox(height: height * 0.020),
                      SortByBags(),
                      NewBags(),
                      const ChoosedBags(),
                      const ListOfShops(),
                      const BagsForSpecialDays(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



