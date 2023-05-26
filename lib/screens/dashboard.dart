import 'package:apple_store/global_variables.dart';
import 'package:apple_store/screens/home.dart';
import 'package:apple_store/screens/my_cart.dart';
import 'package:apple_store/screens/my-profile/my_profile.dart';
import 'package:apple_store/screens/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  final PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style13, // Choose the nav bar style with this property.
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const ProductsPage(),
      const MyCartPage(),
      const MyProfilePage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: "Home",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: deActiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.grid_view_rounded),
        title: "Products",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: deActiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bag),
        title: "My Carts",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: deActiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        title: "My Profile",
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: deActiveColor,
      ),
    ];
  }
}
