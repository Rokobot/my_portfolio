import 'package:flutter/material.dart';

import '../../constants/responsive.dart';
import '../../constants/themes.dart';
import '../../template/projects_item.dart';


class ProjectsWidget extends StatefulWidget {
  const ProjectsWidget({super.key});

  @override
  State<ProjectsWidget> createState() => _ProjectsWidgetState();
}

class _ProjectsWidgetState extends State<ProjectsWidget> {
  ///Project list
  final List<String> projetcImageList = [
    'assets/images/ambulance_app.jpg',
    'assets/images/soft_study.jpg',
    'assets/images/soft_study.jpg',
    'assets/images/ambulance_app.jpg',
  ];
  ///Projetcs name
  final List<String> projectsNameList = [
    'Bonpini',
    'Next Generation',
    'Ambulance',
    'Notepad',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(
            height: height(context, 0.067),
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
                projectName: projectsNameList[index],
                newWidth: width(context, 0.4),
                newHeight: height(context, 0.5),
              );
            },
          ),
        ],
      ),
    );
  }
}
