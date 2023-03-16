import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/widgets/create_account.dart';
import 'package:ui_design_task/widgets/login.dart';
import 'package:ui_design_task/widgets/onboard_widget.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            onBoarding(
              image: 'assets/images/welcome.png',
              title: 'Welcome',
              description:
                  'Before enjoying Foodmedia services Please register first',
            ),
            SizedBox(height: 40),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 256,
                minHeight: 49,
              ),
              child: ElevatedButton(
                onPressed: () {
                  showBarModalBottomSheet(
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      controller: ModalScrollController.of(context),
                      child: Container(
                        height: 576,
                        color: Colors.cyan.shade300,
                        child: DefaultTabController(
                          length: 2,
                          child: Scaffold(
                            backgroundColor: Colors.white,
                            appBar: AppBar(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              toolbarHeight: 20,
                              automaticallyImplyLeading: false,
                              bottom: TabBar(
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: primaryColor,
                                labelColor: primaryColor,
                                unselectedLabelColor: appGrey,
                                tabs: [
                                  Tab(text: "Crate Account"),
                                  Tab(text: "Login"),
                                ],
                              ),
                            ),
                            body: TabBarView(
                              // physics: NeverScrollableScrollPhysics(),
                              children: [
                                CreateAccount(),
                                Login(context),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text('Create account'),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 256,
                minHeight: 49,
              ),
              child: ElevatedButton(
                onPressed: () {
                  showBarModalBottomSheet(
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      controller: ModalScrollController.of(context),
                      child: Container(
                        height: 576,
                        color: Colors.cyan.shade300,
                        child: DefaultTabController(
                          length: 2,
                          child: Scaffold(
                            backgroundColor: Colors.white,
                            appBar: AppBar(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              toolbarHeight: 20,
                              automaticallyImplyLeading: false,
                              bottom: TabBar(
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: primaryColor,
                                labelColor: primaryColor,
                                unselectedLabelColor: Color(0xFF89909E),
                                tabs: [
                                  Tab(text: "Crate Account"),
                                  Tab(text: "Login"),
                                ],
                              ),
                            ),
                            body: TabBarView(
                              // physics: NeverScrollableScrollPhysics(),
                              children: [
                                CreateAccount(),
                                Login(context),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFD1FAE5),
                  onPrimary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 320,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By logging in or registering, you have agreed to",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' the Terms and Conditions',
                      style: TextStyle(color: primaryColor),
                    ),
                    TextSpan(text: ' And'),
                    TextSpan(
                      text: '  Privacy Policy.',
                      style: TextStyle(color: primaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
