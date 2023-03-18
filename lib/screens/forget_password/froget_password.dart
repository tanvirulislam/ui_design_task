import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/screens/forget_password/success.dart';
import 'package:ui_design_task/screens/bottomNavScrren/home.dart';
import 'package:ui_design_task/widgets/custome_button.dart';
import 'package:ui_design_task/widgets/custome_textfield.dart';
import 'package:ui_design_task/widgets/form_title.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController emailController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 9,
                ),
                Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Enter your registered email below',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF9CA3AF),
                  ),
                ),
                SizedBox(height: size.height / 9),
                formTitle(titel: 'Email Address'),
                customeTextField(
                    controller: emailController,
                    hintText: 'Eg namaemail@emailkamu.com',
                    obscureText: false),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    children: [
                      Text('Remember the password?'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height / 4),
                Center(
                  child: CustomeButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: Success(),
                          type: PageTransitionType.fade,
                        ),
                      );
                    },
                    title: 'Submit',
                    primary: primaryColor,
                    onPrimary: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
