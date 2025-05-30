import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/features/bazar/presentation/screens/bazar_screen.dart';
import 'package:history_app/features/home/presentation/screens/home_screen.dart';
import 'package:history_app/features/profile/presentation/screens/profile_screen.dart';
import 'package:history_app/features/search/presentation/screens/search_screen.dart';

class BottomHomeNavBar extends StatefulWidget {
  const BottomHomeNavBar({super.key});

  @override
  State<BottomHomeNavBar> createState() => _BottomHomeNavBarState();
}

class _BottomHomeNavBarState extends State<BottomHomeNavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    BazarScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.lightBrown,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/home.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/active_home.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/shopping-cart.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/active_cart.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/search.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/active-search.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/person.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/active-person.svg',
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
