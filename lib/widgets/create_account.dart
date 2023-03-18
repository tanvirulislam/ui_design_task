import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/screens/bottomNavScrren/home.dart';
import 'package:ui_design_task/screens/bottom_nav_controller.dart';
import 'package:ui_design_task/widgets/custome_button.dart';
import 'package:ui_design_task/widgets/custome_textfield.dart';
import 'package:ui_design_task/widgets/form_title.dart';

Widget CreateAccount(BuildContext context) {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          formTitle(titel: 'Full Name'),
          customeTextField(
              controller: nameController,
              hintText: 'Enter your full name',
              obscureText: false),
          formTitle(titel: 'Email Address'),
          customeTextField(
              controller: emailController,
              hintText: 'Eg namaemail@emailkamu.com',
              obscureText: false),
          formTitle(titel: 'Password'),
          customeTextField(
              controller: passwordController,
              hintText: '**** **** ****',
              obscureText: true),
          SizedBox(height: 20),
          Center(
            child: CustomeButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: BottomNavController(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
              title: 'Ragistration',
              primary: primaryColor,
              onPrimary: Colors.white,
            ),
          ),
          Center(
            child: SizedBox(
              child: Divider(),
              width: 148,
            ),
          ),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 256,
                minHeight: 51,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: BottomNavController(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      'Sign up with Google',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: appGrey,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
