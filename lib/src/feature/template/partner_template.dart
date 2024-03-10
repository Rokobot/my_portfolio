import 'package:flutter/material.dart';
import 'package:my_portfolio/src/feature/constants/responsive.dart';




class PartnerTemplate extends StatelessWidget {
  final String partnerName;
  final String aboutPartner;
  final String companyImagePath;
  const PartnerTemplate({super.key, required this.partnerName, required this.aboutPartner, required this.companyImagePath});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: height(context, 0.05),
              width: width(context, 0.1),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(companyImagePath))),),
            Text(partnerName, style: TextStyle(color: Colors.white, fontSize: 18,fontFamily: 'open_sans_regular',),),
            Text(aboutPartner, style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'open_sans_regular',),),
          ],
        )
      ),
    );
  }
}
