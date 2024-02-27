import 'package:flutter/material.dart';
//import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:onboarding_screen/screen/introduction_screen.dart';
import "package:shared_preferences/shared_preferences.dart";
import 'package:onboarding_screen/screen/signin_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


bool show = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //รอให้ firebaseเริ่มทำงาน
    options: DefaultFirebaseOptions
        .currentPlatform, //android ios website id มีต่างกัน
  );
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: show? IntroScreen() : SignInScreen(),
    );
  }
}
