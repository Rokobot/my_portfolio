import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/responsive.dart';
import '../../constants/themes.dart';
import '../../template/skills_template.dart';

class TechnicalSkillWidget extends StatefulWidget {
  const TechnicalSkillWidget({super.key});

  @override
  State<TechnicalSkillWidget> createState() => _TechnicalSkillWidgetState();
}

class _TechnicalSkillWidgetState extends State<TechnicalSkillWidget> {
  ///List of tech skill
  List<dynamic>? techSkillList;

  ///Skill Image List
  List<String> skillImageList = [
    'firebase',
    'dart',
    'hive',
    'bloc',
    'cubit',
    'ubuntu',
    'supabase',
    'dio',
    'http'
  ];

  ///Fetch data from mock
  Future<dynamic> _fetchMockData() async {
    final String response =
        await rootBundle.loadString('assets/mock_data/portfolio_api.json');
    var data = jsonDecode(response);
    List<dynamic> dataList = data['tech_skills'];
    return dataList;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchMockData().then((value) {
      for (int i = 0; i < value.length; i++) {
        setState(() {
          techSkillList = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: height(context, 0.1),
          ),
          Text(
            'Technical Skills',
            style: TextStyle(
              color: CustomColor.titleFontColor,
              fontSize: height(context, 0.040),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height(context, 0.067),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[0], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 50, imageWidth: 50,skillImagePath: skillImageList[1], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[2], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[3], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[4], techSkillDescription: '', techSkillName: ''),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[5], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[6], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[7], techSkillDescription: '', techSkillName: ''),
              SkillsTemplate(imageHeight: 100, imageWidth: 100,skillImagePath: skillImageList[8], techSkillDescription: '', techSkillName: ''),
            ],
          ),
        ],
      ),
    );
  }
}
