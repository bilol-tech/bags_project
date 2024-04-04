import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_bags/src/features/core/screens/shops/shops_page.dart';
import 'bags/bags_page.dart';
import 'discount/discount_page.dart';
import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int _currentPage = 0;
final List _children = [
  const HomePage(),
  const BagsPage(),
  const DiscountPage(),
  const ShopsPage(),
];




class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    return Scaffold(
      body: _children[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentPage,
          selectedItemColor: const Color(0xff178663), // Color for selected item
          selectedLabelStyle: GoogleFonts.poppins(fontSize: height * 0.014),
          unselectedLabelStyle: GoogleFonts.poppins(fontSize: height * 0.014),
          unselectedItemColor: const Color(0xff323232),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: height * 0.023,),
              label: "Bosh sahifa",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, size: height * 0.023),
              label: "Sumkalar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.discount_outlined, size: height * 0.023),
              label: "Chegirmalar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined, size: height * 0.023),
              label: "Do'konlar",
            ),
          ],
        ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentPage = index;
    });
  }
}
