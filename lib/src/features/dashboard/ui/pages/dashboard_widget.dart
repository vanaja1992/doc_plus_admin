import 'package:doc_plus_admin/src/core/assets/app_assets.dart';
import 'package:doc_plus_admin/src/core/common_widgets/navigationDrawer.dart';
import 'package:doc_plus_admin/src/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: [
                        //1st Image of Slider
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(AppAssets.slider2Image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage(AppAssets.slider2Image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 100),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(AppAssets.subscriptionImage),
                          iconSize: 65,
                          onPressed: () {},
                        ),
                        const Text("Subscription"),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 100),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(AppAssets.doctorImage),
                          iconSize: 65,
                          onPressed: () {},
                        ),
                        const Text("Doctors"),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 100),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(AppAssets.clinicImage),
                          iconSize: 65,
                          onPressed: () {},
                        ),
                        const Text("Clinics "),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 100),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(AppAssets.profileImage),
                          iconSize: 65,
                          onPressed: () {},
                        ),
                        const Text("Profile "),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 100),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(AppAssets.settingImage),
                          iconSize: 65,
                          onPressed: () {},
                        ),
                        const Text("Settings "),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        const BoxConstraints.tightFor(width: 100, height: 100),
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(AppAssets.logoImage),
                          iconSize: 65,
                          onPressed: () {},
                        ),
                        const Text("DocPlus "),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "NEWS UPDATES",
                    style: AppTextTheme.heading2Style,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: const [
                    Card(
                      elevation: 24,
                      margin: EdgeInsets.symmetric(horizontal: 13),
                      child: ListTile(
                        title: Text(
                            "New clinic added , please check the updates on it",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Card(
                      elevation: 24,
                      margin: EdgeInsets.symmetric(horizontal: 13),
                      child: ListTile(
                        title: Text(
                            "New clinic added , please check the updates on it",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Card(
                      elevation: 24,
                      margin: EdgeInsets.symmetric(horizontal: 13),
                      child: ListTile(
                        title: Text(
                            "New clinic added , please check the updates on it",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
