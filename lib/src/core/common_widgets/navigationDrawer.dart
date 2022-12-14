import 'package:doc_plus_admin/src/core/assets/app_assets.dart';
import 'package:doc_plus_admin/src/core/constants/app_colors.dart';
import 'package:doc_plus_admin/src/core/constants/app_dimen.dart';
import 'package:doc_plus_admin/src/core/theme/app_text_theme.dart';
import 'package:doc_plus_admin/src/features/dashboard/ui/pages/dashboard_widget.dart';
import 'package:doc_plus_admin/src/features/profile/pages/profile_widget.dart';
import 'package:doc_plus_admin/src/features/subscription/ui/pages/subscription_widget.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            builtMenuItems(context),
          ],
        ),
      ),
    );
  }

  buildHeader(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: EdgeInsets.only(
        top: 24 + MediaQuery.of(context).padding.top,
        bottom: 24,
      ),
      child: Column(
        children: [
          const Center(
            child: Image(
              image: AssetImage(AppAssets.loginIconImage),
              height: AppDimen.appImagelogoheight,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "ADMIN",
            style: AppTextTheme.inputTextStyle1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "username",
            style: AppTextTheme.inputTextStyle1,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  builtMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        runSpacing: 6, //vertical spacing
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashboardWidget()));
            },
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Subscription"),
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SubscriptionWidget()));
            },
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Clinic"),
            onTap: () {},
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Settings"),
            onTap: () {},
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Notifications"),
            onTap: () {},
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ProfileWidget()));
            },
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Logout"),
            onTap: () {},
          ),
          const Divider(
            color: AppColors.messageToastColor,
          ),
          ListTile(
            title: const Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
