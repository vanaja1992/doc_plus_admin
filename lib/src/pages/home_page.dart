import 'package:doc_plus_admin/src/core/assets/app_assets.dart';
import 'package:doc_plus_admin/src/core/common_widgets/navigationDrawer.dart';
import 'package:doc_plus_admin/src/core/constants/app_colors.dart';
import 'package:doc_plus_admin/src/core/constants/app_string.dart';
import 'package:doc_plus_admin/src/features/clinic/ui/pages/clinic_widget.dart';
import 'package:doc_plus_admin/src/features/dashboard/ui/pages/dashboard_widget.dart';
import 'package:doc_plus_admin/src/features/profile/pages/profile_widget.dart';
import 'package:doc_plus_admin/src/features/subscription/ui/pages/subscription_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const fragments = [
    DashboardWidget(),
    SubscriptionWidget(),
    ClinicWidget(),
    ProfileWidget()
  ];
  int index = 0;
  static const title = [
    AppStrings.home,
    AppStrings.subscription,
    AppStrings.clinic,
    AppStrings.profile
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Container(
          padding: const EdgeInsets.all(5),
          width: 40,
          child: const Image(
            image: AssetImage(AppAssets.loginIconImage),
          ),
        ),
        title: Text(
          title[index],
          style: const TextStyle(
              color: AppColors.primaryColor, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.search, color: AppColors.primaryColor),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.more_vert, color: AppColors.primaryColor),
          SizedBox(
            width: 12,
          )
        ],
      ),
      drawer: const NavigationDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: AppColors.bottomNavLabel,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppStrings.home,
              backgroundColor: AppColors.menuColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: AppStrings.subscription,
              backgroundColor: AppColors.menuColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: AppStrings.clinic,
              backgroundColor: AppColors.menuColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppStrings.profile,
              backgroundColor: AppColors.menuColor),
        ],
      ),
      body: SafeArea(child: fragments[index]),
    );
  }
}
