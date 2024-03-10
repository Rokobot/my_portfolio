import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/src/feature/constants/themes.dart';
import 'package:my_portfolio/src/feature/presentation/screens/projects_screen.dart';

import '../../constants/responsive.dart';
import 'home_page_screen.dart';


class ConnectMeScreen extends StatefulWidget {
  const ConnectMeScreen({super.key});

  @override
  State<ConnectMeScreen> createState() => _ConnectMeScreenState();
}

class _ConnectMeScreenState extends State<ConnectMeScreen> {
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
      backgroundColor: CustomColor.scaffoldBackground,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/connect_me/connect_me.png'),
                ),
                Container(
                  width: width(context, 0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(child: Text('Hello, i am Ali Hasanov', style: TextStyle(fontSize: 20, color: CustomColor.headerFontColor, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),),
                      Container(
                          width: width(context, 0.5),
                          child: Text('You can send me a direct e-mail from here. Best case scenario is you call me with my phone number.', style: TextStyle(color: Colors.white,), textAlign: TextAlign.left,)),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Icon(Icons.call, color: CustomColor.headerFontColor,),
                          SizedBox(width: 5,),
                          Container(
                              width: width(context, 0.2),
                              child: Text('+994509794981', style: TextStyle(color: CustomColor.headerFontColor,), textAlign: TextAlign.left,))
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.mail, color: CustomColor.headerFontColor,),
                          SizedBox(width: 5,),
                          Container(
                              width: width(context, 0.26),
                              child: Text('alihasanov2023@gmail.com', style: TextStyle(color: CustomColor.headerFontColor,), textAlign: TextAlign.left,))
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: width(context, 0.4),
              child: TextField(
                minLines: 6,
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'type here...',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: CustomColor.headerFontColor)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CustomColor.skillItemColor)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CustomColor.headerFontColor)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Ink(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: CustomColor.titleFontColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: (){},
                focusColor:CustomColor.titleFontColor ,
                  highlightColor:CustomColor.titleFontColor,
                  hoverColor: CustomColor.skillItemColor,
                  splashColor: Colors.white,
                  child: Center(child: Text('send', style: TextStyle(color: Colors.white),),)),

            )
          ],
        ),
      ),
    );
  }
}
