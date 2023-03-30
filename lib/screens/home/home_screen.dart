import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<Widget> pages = const [
      Text('Home'),
      Text('Cari'),
      Text('Kursus'),
      Text('Pembelian'),
      Text('Setting'),
    ];

    Widget homeIcon = SvgPicture.asset('icon/ic_home.svg');
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.primary,
          backgroundColor: AppColors.backgroundPurple,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        child: NavigationBar(
          height: 65,
          selectedIndex: currentIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          animationDuration: Duration(seconds: 2),
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                'icon/ic_setting.svg',
                color: AppColors.black,
                width: 20,
                height: 20,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: IconButton(
                icon: SvgPicture.asset(
                  'icon/ic_setting.svg',
                  color: AppColors.white,
                  width: 20,
                  height: 20,
                ),
                onPressed: () {},
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'icon/ic_setting.svg',
                color: AppColors.white,
                width: 20,
                height: 20,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'icon/ic_setting.svg',
                color: AppColors.white,
                width: 20,
                height: 20,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'icon/ic_setting.svg',
                color: AppColors.white,
                width: 20,
                height: 20,
              ),
              label: 'Home',
            ),
          ],
        ),
      ),
    );
  }
}
