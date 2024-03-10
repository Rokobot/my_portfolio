import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/src/feature/constants/responsive.dart';
import 'package:my_portfolio/src/feature/constants/themes.dart';
import 'package:my_portfolio/src/feature/presentation/screens/connect_me_screen.dart';
import 'package:my_portfolio/src/feature/presentation/screens/projects_screen.dart';
import 'package:my_portfolio/src/feature/presentation/widgets/company_list_widget.dart';
import 'package:my_portfolio/src/feature/presentation/widgets/header_widget.dart';
import 'package:my_portfolio/src/feature/presentation/widgets/projects_widget.dart';
import 'package:my_portfolio/src/feature/presentation/widgets/technical_skill_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///Projetcs name
  final List<String> projectsNameList = [
    'Bonpini',
    'Next Generation',
    'Ambulance',
    'Tada chat app',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CustomColor.scaffoldBackground,
        actions: [
          SizedBox(
            height: height(context, 0.02),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (context) =>
                                HomePage()));
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height(context, 0.015)),
                  )),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (context) =>
                                ProjectsScreen()));
                  },
                  child: Text(
                    'Projetcs',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height(context, 0.015)),
                  )),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  child: Text(
                    'About',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height(context, 0.015)),
                  )),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        CupertinoPageRoute(
                            builder: (context) =>
                                ConnectMeScreen()));
                  },
                  child: Text(
                    'Contact me',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height(context, 0.015)),
                  )),
              SizedBox(
                width: 20,
              ),
            ],
          ),

        ],
      ),
      body: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, bool) {
                return [
                  SliverAppBar(
                    backgroundColor: CustomColor.scaffoldBackground,
                    expandedHeight: height(context, 0.5),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        color: CustomColor.scaffoldBackground,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ///Header
                            HeaderWidget(),
                          ],
                        ),
                      ),
                    ),
                  )
                ];
              },
              body: SingleChildScrollView(
                child: Column(
                  children: [

                    ///Projetcs
                    ProjectsWidget(),

                    ///Technical Skills
                    TechnicalSkillWidget(),

                    ///I worked on Projects For
                    CompanyListWidget()
                  ],
                ),
              ))),
    );
  }
}
