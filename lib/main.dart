import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/firebase_options.dart';
import 'package:my_portfolio/src/feature/presentation/screens/connect_me_screen.dart';
import 'package:my_portfolio/src/feature/presentation/screens/home_page_screen.dart';
import 'package:my_portfolio/src/feature/constants/themes.dart';
import 'package:my_portfolio/src/feature/presentation/screens/projects_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}




class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: CustomColor.scaffoldBackground, fontFamily: 'open_sans_regular'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProjectsScreen(),
      ),
    );
  }
}
