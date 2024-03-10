import 'package:flutter/material.dart';
import 'package:my_portfolio/src/feature/constants/responsive.dart';

class ProjetcsItemTemplate extends StatefulWidget {
  final String projectName;
  final String projectImagePath;
  final double newWidth;
  final double newHeight;
  const ProjetcsItemTemplate(
      {super.key, required this.projectImagePath, required this.projectName, required this.newWidth, required this.newHeight});

  @override
  State<ProjetcsItemTemplate> createState() => _ProjetcsItemTemplateState();
}

class _ProjetcsItemTemplateState extends State<ProjetcsItemTemplate> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.newHeight,
        width: widget.newWidth,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            AnimatedContainer(
              height: widget.newHeight,
              width: widget.newWidth,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(widget.projectImagePath),
                            fit: BoxFit.cover)), duration: Duration(milliseconds: 300),
                  ),
            Positioned(
              left: -1,
              bottom: -1,
              right: -1,
              child: Container(
                height: widget.newHeight+2,
                width: widget.newWidth+2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                    gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(left: 5, bottom: 25, child: Text(widget.projectName, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w100, fontFamily: 'open_sans_regular'),)),
            Positioned(left: 8, bottom: 10, child: Text('View Project', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w100, fontFamily: 'open_sans_regular', decoration: TextDecoration.underline, decorationColor: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
