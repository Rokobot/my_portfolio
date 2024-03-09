import 'package:flutter/material.dart';



double width(BuildContext context, double width){
  return MediaQuery.of(context).size.width * width;
}


double height(BuildContext context, double height){
  return MediaQuery.of(context).size.width * height;
}