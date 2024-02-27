import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:onboarding_screen/screen/signin_screen.dart';
//import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'Is The Product Safe?',
      body:
          "It's so protected that even our team has no any access to you payment data.",
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's GO"),
        ),
      ),
      image: Padding(
        padding: const EdgeInsets.only(top: 70.0), // ปรับตามต้องการ
        child: Transform.scale(
          scale: 3.0, // เพิ่มหรือลดขนาดตามต้องการ
          child: Image.asset(
            '../../assets/images/safe2.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        //pageColor: Color(0xFFFFF6E9),
      ),
    ),
    PageViewModel(
      title: 'Do You Bill My Card?',
      body:
          'We will never bill your card. Seriously. We earn money from services,not from users.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's GO"),
        ),
      ),
      image: Padding(
        padding: const EdgeInsets.only(top: 70.0), // ปรับตามต้องการ
        child: Transform.scale(
          scale: 3.0, // เพิ่มหรือลดขนาดตามต้องการ
          child: Image.asset(
            '../../assets/images/pay2.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'What Happens To My Data?',
      body:
          'You provide your data to our robot without human interaction. Then it shows stats to you.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
          ),
          onPressed: () {},
          child: const Text("Let's GO"),
        ),
      ),
      image: Padding(
        padding: const EdgeInsets.only(top: 80), // ปรับตามต้องการ
        child: Transform.scale(
          scale: 3.0, // เพิ่มหรือลดขนาดตามต้องการ
          child: Image.asset(
            '../../assets/images/protect2.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP INTRO SCREEN',
        style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: IntroductionScreen(
        pages: pages,
        showSkipButton: true,
        skip: const Text('Skip'),
        showDoneButton: true,
        done: const Text('Done'),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceInOut,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Colors.blue,
          activeColor: Colors.orange, //หน้าที่ใช้อยู่
          activeSize: Size.square(20),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefers = await SharedPreferences.getInstance();
    await prefers.setBool('ON BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignInScreen(),
      ),
    );
  }
}
