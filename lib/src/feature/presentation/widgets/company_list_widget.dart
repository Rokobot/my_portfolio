import 'package:flutter/material.dart';

import '../../constants/responsive.dart';
import '../../constants/themes.dart';
import '../../template/partner_template.dart';


class CompanyListWidget extends StatefulWidget {
  const CompanyListWidget({super.key});

  @override
  State<CompanyListWidget> createState() => _CompanyListWidgetState();
}

class _CompanyListWidgetState extends State<CompanyListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height(context, 0.1),),
          Container(
            color: Colors.black,
            child:Column(
              children: [

                Text('I worked on Projects For',style: TextStyle(
                  color: CustomColor.titleFontColor,
                  fontSize: height(context, 0.040),
                  fontWeight: FontWeight.bold,
                ), ),
                SizedBox(
                  height: height(context, 0.067),
                ),
                Container(
                  width: width(context, 1),
                  height: height(context, 0.15),
                  constraints: BoxConstraints(
                    maxHeight: height(context, 0.15),
                  ),
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        SizedBox(width: width(context, 0.1),),
                        PartnerTemplate(partnerName: 'Next Generation', aboutPartner: 'Education Company', companyImagePath: 'assets/images/company_logos/next_generation.png'),
                        SizedBox(width: width(context, 0.1),),
                        PartnerTemplate(partnerName: 'Bonpini', aboutPartner: 'Rent Company', companyImagePath: 'assets/images/company_logos/bonpini_logo.png'),
                        SizedBox(width: width(context, 0.1),),
                        PartnerTemplate(partnerName: 'Jey Soft', aboutPartner: 'IT Company', companyImagePath:'assets/images/company_logos/jey_soft.png' ),
                        SizedBox(width: width(context, 0.1),),
                        PartnerTemplate(partnerName: 'Ambulance App', aboutPartner: 'StartUp', companyImagePath: 'assets/images/company_logos/ambulance.png'),
                        SizedBox(width: width(context, 0.1),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height(context, 0.1),),
        ],
      ),
    );
  }
}
