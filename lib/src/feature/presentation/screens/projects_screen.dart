import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/src/feature/template/projects_item.dart';

import '../../constants/responsive.dart';
import '../../constants/themes.dart';
import 'connect_me_screen.dart';
import 'home_page_screen.dart';


class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('You can take a look at my applications APPROVED by Google Play.', style: TextStyle(fontSize: height(context, 0.015), color: CustomColor.headerFontColor, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height(context, 0.1),
                  width: width(context, 0.1),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/porjects/goole_play_succes.png'))
                  ),
                ),Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/porjects/google_play.png'))
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjetcsItemTemplate(projectImagePath: '', projectName: 'Yoyo', newWidth: width(context, 0.2), newHeight: height(context, 0.3)),
                ProjetcsItemTemplate(projectImagePath: '', projectName: 'OrderX', newWidth: width(context, 0.2), newHeight: height(context, 0.3)),
                ProjetcsItemTemplate(projectImagePath: '', projectName: 'Next Generation', newWidth: width(context, 0.2), newHeight: height(context, 0.3)),
              ],
            ),
            SizedBox(height: 100,),
            Text('Feelance applications I\'m currently working on.', style: TextStyle(fontSize: height(context, 0.015), color: CustomColor.headerFontColor, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
            Container(
              height: height(context, 0.1),
              width: width(context, 0.1),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/porjects/succes.png'))
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjetcsItemTemplate(projectImagePath: '', projectName: 'Ambulance app',newWidth: width(context, 0.2), newHeight: height(context, 0.3)),
                ProjetcsItemTemplate(projectImagePath: '', projectName: 'Bonpini', newWidth: width(context, 0.2), newHeight: height(context, 0.3)),
                ProjetcsItemTemplate(projectImagePath: '', projectName: 'Chat app', newWidth: width(context, 0.2), newHeight: height(context, 0.3)),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
