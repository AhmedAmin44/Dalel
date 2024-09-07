import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/featuers/home/cubit/home_cubit.dart';
import 'package:dalel/featuers/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart%20%20';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/utils/app_images.dart';
import '../../../cart/presentation/views/cart_view.dart';
import '../../../profile/presentation/views/Profile_view.dart';
import '../../../search/presentation/views/search_view.dart';

class HomeNavBarWidget extends StatelessWidget {
  PersistentTabController _controller = PersistentTabController();

  HomeNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style7,
      backgroundColor: AppColors.primaryColor,
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }
}

List<Widget> _buildScreens() {
  return [
     const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Images.home_inactive),
      title: ("Home"),
      activeColorSecondary: AppColors.deepBrown,
      activeColorPrimary: Colors.white12,
      inactiveIcon: SvgPicture.asset(Images.home),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Images.cart_inactive),
      title: ("Cart"),
      activeColorPrimary: Colors.white12,
      activeColorSecondary: AppColors.deepBrown,
      inactiveIcon: SvgPicture.asset(Images.cart),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Images.sarch_inactive),
      title: ("Search"),
      activeColorSecondary: AppColors.deepBrown,
      activeColorPrimary: Colors.white12,
      inactiveIcon: SvgPicture.asset(Images.search),
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(Images.profile_inactive),
      title: ("Profile"),
      activeColorSecondary: AppColors.deepBrown,
      activeColorPrimary: Colors.white12,
      inactiveIcon: SvgPicture.asset(Images.profile),
    ),
  ];
}
