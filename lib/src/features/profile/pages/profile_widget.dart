import 'package:doc_plus_admin/src/core/common_widgets/navigationDrawer.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: NavigationDrawer(),
    );
  }
}
