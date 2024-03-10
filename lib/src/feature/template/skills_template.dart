import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_portfolio/src/feature/constants/responsive.dart';

import '../constants/themes.dart';



class SkillsTemplate extends StatefulWidget {
  final String skillImagePath;
  final String techSkillDescription;
  final String techSkillName;
  final double imageHeight;
  final double imageWidth;
  const SkillsTemplate({super.key, required this.skillImagePath, required this.techSkillDescription, required this.techSkillName, required this.imageHeight, required this.imageWidth});

  @override
  State<SkillsTemplate> createState() => _SkillsTemplateState();
}

class _SkillsTemplateState extends State<SkillsTemplate> {


  

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: CustomColor.skillItemColor,borderRadius: BorderRadius.circular(8)),
      width: height(context, 0.15),
      height: height(context, 0.15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/skill_logos/${widget.skillImagePath}_logo.png'),
      ),
    );
  }
}
