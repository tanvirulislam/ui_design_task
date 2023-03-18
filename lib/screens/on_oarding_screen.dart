import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_design_task/screens/welcome.dart';
import 'package:ui_design_task/widgets/onboard_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _controller = PageController();
  bool lastPage = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  lastPage = index == 2;
                });
              },
              children: [
                onBoarding(
                  image: 'assets/images/page1.png',
                  title: 'Nearby restaurants',
                  description:
                      "You don't have to go far to find a good restaurant, we have provided all the restaurants that is\n near you",
                ),
                onBoarding(
                  image: 'assets/images/page2.png',
                  title: 'Select the Favorites Menu',
                  description:
                      "Now eat well, don't leave the house,You can choose your favorite food only with \n one click",
                ),
                onBoarding(
                  image: 'assets/images/page3.png',
                  title: 'Good food at a cheap price',
                  description:
                      "You can eat at expensive restaurants with affordable price \n",
                ),
              ],
            ),
          ],
        ),
        bottomSheet: Container(
          color: Colors.white,
          width: size.width,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lastPage == true
                  ? TextButton(onPressed: () {}, child: Text(''))
                  : TextButton(
                      onPressed: () => _controller.jumpToPage(2),
                      child: Text(
                        'Skip',
                        style: TextStyle(color: Color(0xFF4B5563)),
                      ),
                    ),
              SmoothPageIndicator(
                effect: WormEffect(
                  activeDotColor: Color(0xFF32B768),
                ),
                controller: _controller,
                count: 3,
              ),
              lastPage
                  ? IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: Welcome(), type: PageTransitionType.fade),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF32B768),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF32B768),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
