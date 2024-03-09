import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/src/feature/constants/responsive.dart';
import 'package:my_portfolio/src/feature/constants/themes.dart';
import 'package:my_portfolio/src/feature/template/partner_template.dart';
import 'package:my_portfolio/src/feature/template/projects_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///Project list
  final List<String> projetcImageList = [
    'assets/images/ambulance_app.jpg',
    'assets/images/soft_study.jpg',
    'assets/images/soft_study.jpg',
    'assets/images/ambulance_app.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///Header
                  Container(
                      width: width(context, 1),
                      height: height(context, 0.8),
                      child: Stack(
                        children: [
                          Text(
                            'DEVELOPER',
                            style: TextStyle(
                              fontSize: height(context, 0.3),
                              color:
                                  CustomColor.headerFontColor.withOpacity(0.21),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              width: width(context, 0.640),
                              height: height(context, 0.56),
                              color: CustomColor.headerFontColor.withOpacity(0.8),
                              child: Center(child: FlutterLogo(size: height(context, 0.5),)),
                            ),
                          ),
                          Positioned(
                              left: width(context, 0.05),
                              bottom: height(context, 0.1),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.black38.withOpacity(0.15),
                                    border: Border.all(
                                        color: Colors.white, width: 1)),
                                height: height(context, 0.35),
                                width: width(context, 0.5),
                                child: ClipRRect(
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hi,',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w100,
                                                fontSize: height(context, 0.04)),
                                          ),
                                          Text(
                                            'my name is',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                                fontSize: height(context, 0.07)),
                                          ),
                                          Text(
                                            'Ali Hasanov',
                                            style: TextStyle(
                                                color:
                                                    CustomColor.headerFontColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: height(context, 0.07)),
                                          ),
                                          Text(
                                            'Flutter Developer',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w100,
                                                fontSize: height(context, 0.04)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          Positioned(
                            bottom: 1,
                            child: Row(
                              children: [
                                Container(
                                  color: Colors.white,
                                  width: width(context, 0.08),
                                  height: height(context, 0.001),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.alternate_email,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: height(context, 0.1),
                  ),

                  ///Projetcs
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Projects',
                          style: TextStyle(
                            color: CustomColor.titleFontColor,
                            fontSize: height(context, 0.040),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return ProjetcsItemTemplate(
                              projectImagePath: projetcImageList[index],
                              projectName: 'Bonpini',
                              newWidth: width(context, 0.4),
                              newHeight: height(context, 0.5),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  ///Principles
                  Container(
                    child:Column(
                      children: [
                        SizedBox(height: height(context, 0.255),),
                        Text('Principles',style: TextStyle(
                          color: CustomColor.titleFontColor,
                          fontSize: height(context, 0.040),
                          fontWeight: FontWeight.bold,
                        ), ),
                        SizedBox(height: height(context, 0.067),),

                      ],
                    ),
                  ),
                  ///I worked on Projects For
                  Container(
                    child:Column(
                      children: [
                        SizedBox(height: height(context, 0.255),),
                        Text('I worked on Projects For',style: TextStyle(
                          color: CustomColor.titleFontColor,
                          fontSize: height(context, 0.040),
                          fontWeight: FontWeight.bold,
                        ), ),
                        SizedBox(height: height(context, 0.067),),
                        Container(
                          color: Colors.black,
                          width: width(context, 1),
                          height: height(context, 0.268),
                          child: Center(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,

                              children: [
                                PartnerTemplate(partnerName: 'Next Generation', aboutPartner: 'Education Company'),
                                SizedBox(width: width(context, 0.1),),
                                PartnerTemplate(partnerName: 'Bonpini', aboutPartner: 'Rent Company'),
                                SizedBox(width: width(context, 0.1),),
                                PartnerTemplate(partnerName: 'Jey Soft', aboutPartner: 'IT Company'),
                                SizedBox(width: width(context, 0.1),),
                                PartnerTemplate(partnerName: 'Ambulance App', aboutPartner: 'StartUp'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: height(context, 0.067),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
