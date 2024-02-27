import 'package:flutter/material.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  signInWithEmail(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Program'),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [

            // Enter your Email//

            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: emailController,
              hinText: "Enter your email",
              obscureText: false,
              labelText: "Email",
            ),
            
            //Enter your password//
            
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              hinText: "Enter your password",
              obscureText: true,
              labelText: "Password",
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(onTap: signInWithEmail, hinText: "Sign in")
          ],
        ),
      ),
    );
  }
}
