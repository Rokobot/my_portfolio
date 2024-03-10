import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants/responsive.dart';
import '../../constants/themes.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width(context, 1),
        height: height(context, 0.45),
        child: Expanded(
        child: Stack(
            children: [
            Text(
            'DEVELOPER',
              style: TextStyle(
                fontSize: height(context, 0.15),
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
              height: height(context, 0.36),
              color: CustomColor.headerFontColor.withOpacity(0.8),
              child: Center(child: FlutterLogo(size: height(context, 0.5),)),
            ),
          ),
          Positioned(
              left: width(context, 0.01),
              bottom: height(context, 0.1),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black38.withOpacity(0.15),
                    border: Border.all(
                        color: Colors.white, width: 1)),
                height: height(context, 0.22),
                width: width(context, 0.4),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter:
                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(

                            'Hi,',
                            style: TextStyle(
                                fontFamily: 'open_sans_regular',
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: height(context, 0.02)),
                          ),
                          Text(
                            'my name is',
                            style: TextStyle(
                                fontFamily: 'open_sans_regular',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: height(context, 0.04)),
                          ),
                          Text(
                            'Ali Hasanov',
                            style: TextStyle(
                                fontFamily: 'open_sans_regular',
                                color:
                                CustomColor.headerFontColor,
                                fontWeight: FontWeight.bold,
                                fontSize: height(context, 0.04)),
                          ),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                                fontFamily: 'open_sans_regular',
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: height(context, 0.02)),
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
        ),
            ));
  }
}
