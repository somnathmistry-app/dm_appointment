import 'package:dm_appointment/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../styles/app_colors.dart';
import '../utils/constants/size_oriantation.dart';
import 'add_appointments.dart';
import 'all_appointments.dart';
import 'home_page.dart';


class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}
var box = GetStorage();

final ScrollController scrollController = ScrollController();

class _BottomNavPageState extends State<BottomNavPage> {

  final List<Widget> _screens =
  [
    HomePage(),
    const AddNew(),
    const Appointments(),
    const Profile(),
  ];

  int initValue = 0;

  @override
  Widget build(BuildContext context) {
    ScreenContext.getScreenContext(context);
    // print((box.read('isLogin')));
    if(ScreenContext.width! > 550) {
      ///tablets...............

      return Scaffold(
        body: IndexedStack(
          index: initValue,
          children: _screens,
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.grey[100],
              labelTextStyle:  MaterialStateProperty.all(TextStyle(color: AppColors.themeColor))
          ),
          child: NavigationBar(
            elevation: 5,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            onDestinationSelected: (value) {
              setState(() {
                initValue = value;
              });
            },
            selectedIndex: initValue,
            // height: 500,
            backgroundColor: const Color(0xFFDFEFFF),
            animationDuration: const Duration(seconds: 2),
            destinations:  [
              NavigationDestination(
                  icon: const Icon(Icons.home_outlined,size: 34,),
                  selectedIcon: Icon(Icons.home,
                    size: 37,
                    color: AppColors.themeColor,),
                  label: 'Home'),
              NavigationDestination(
                  icon: const Icon(Icons.add_circle_outline,size: 32,),
                  selectedIcon: Icon(Icons.add_circle,
                    size: 36,
                    color: AppColors.themeColor,),
                  label: 'Add New'),
              NavigationDestination(
                  icon: const Icon(Icons.file_open_outlined,size: 32,),
                  selectedIcon: Icon(Icons.file_open,
                    size: 36,
                    color: AppColors.themeColor,),
                  label: 'Appointments'),
              NavigationDestination(
                  icon: const Icon(Icons.person_outline,size: 32,),
                  selectedIcon: Icon(Icons.person,
                    size: 36,
                    color: AppColors.themeColor,),
                  label: 'Profiles'),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: IndexedStack(
        index: initValue,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.grey[100],
          labelTextStyle:  MaterialStateProperty.all(TextStyle(
            color: AppColors.themeColor,)
          ),
        ),
        child: NavigationBar(
          elevation: 5,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (value) {
            setState(() {
              initValue = value;
            });
          },
          selectedIndex: initValue,
          height: 70,
          backgroundColor: const Color(0xFFD4EFFA),
          animationDuration: const Duration(seconds: 1),
          destinations:  [
            NavigationDestination(
                icon: const Icon(Icons.home_outlined,size: 28,),
                selectedIcon: Icon(Icons.home,
                  size: 32,
                  color: AppColors.themeColor,),
                label: 'Home'),
            NavigationDestination(
                icon: const Icon(Icons.add_circle_outline),
                selectedIcon: Icon(Icons.add_circle,
                  size: 32,
                  color: AppColors.themeColor,),
                label: 'Add New'),
            NavigationDestination(
                icon: const Icon(Icons.file_open_outlined),
                selectedIcon: Icon(Icons.file_open,
                  size: 32,
                  color: AppColors.themeColor,),
                label: 'Appointments'),
            NavigationDestination(
                icon: const Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person,
                  size: 32,
                  color: AppColors.themeColor,),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

