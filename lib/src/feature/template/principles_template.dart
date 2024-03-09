import 'package:flutter/material.dart';



class PrinciplesTemplate extends StatefulWidget {
  const PrinciplesTemplate({super.key});

  @override
  State<PrinciplesTemplate> createState() => _PrinciplesTemplateState();
}

class _PrinciplesTemplateState extends State<PrinciplesTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
