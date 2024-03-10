import 'package:flutter/material.dart';



class SkillsTemplate extends StatefulWidget {
  const SkillsTemplate({super.key});

  @override
  State<SkillsTemplate> createState() => _SkillsTemplateState();
}

class _SkillsTemplateState extends State<SkillsTemplate> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 100,
      height: 100,
      duration: Duration(milliseconds: 300),
      color:Colors.black,
      child: Center(
        child: Column(
          children: [
            Text(''),
            Text(''),

          ],
        ),
      ),
    );
  }
}
