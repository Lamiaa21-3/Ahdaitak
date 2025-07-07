import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/images.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:ahdydic/features/account/account_screen.dart';

import 'package:ahdydic/features/profile/profile_screen.dart';

import 'package:ahdydic/features/top_up/top_up_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';

import 'gifts/gifts_screen.dart';

import 'home_screen_before_login/home_screen_before_login.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});



  @override
  _MainScreenState createState() => _MainScreenState();


}




class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreenBeforeLogin(),
    GiftsScreen(),
    TopUpScreen(),
    AccountScreen(),

    ProfileScreen(),

    // GiftsScreen(),
    // HomePage(),



  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: ColorManager.purple,

        // selectedLabelStyle: TextStyle(
        //   fontWeight: FontWeight.bold,
        //   color: Colors.red,
        //   fontSize: 14,
        // ),
        unselectedLabelStyle: StylesManager.font12DarkGrayRegular,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: ColorManager.purple,),
            label: S.of(context).home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard,color: ColorManager.purple,),
            label: S.of(context).gifts,
          ),
          BottomNavigationBarItem(
            // 👇 Custom styled icon with circular background
            icon: Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Color(0xFF51375A), // Dark purple background
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(ImagesManager.bottomNavigationBarImage, width: 24, height: 24)
              ),
            ),
            label: '', // You can set label if needed
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time,color: ColorManager.purple,),
            label: S.of(context).record,
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person_2_outlined,color: ColorManager.purple,),
            label: S.of(context).account,

          ),



        ],
      ),
    );
  }
}
