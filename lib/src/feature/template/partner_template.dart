import 'package:flutter/material.dart';




class PartnerTemplate extends StatelessWidget {
  final String partnerName;
  final String aboutPartner;
  const PartnerTemplate({super.key, required this.partnerName, required this.aboutPartner});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(partnerName, style: TextStyle(color: Colors.white, fontSize: 18),),
          Text(aboutPartner, style: TextStyle(color: Colors.white, fontSize: 16),),
        ],
      )
    );
  }
}
