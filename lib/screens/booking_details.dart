import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/widgets/form_title.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appScaffoldBackground,
        appBar: PreferredSize(
          child: customeAppbar(),
          preferredSize: Size(
            double.infinity,
            67,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 6),
              Container(
                height: 358,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),
                      Text(
                        'Tava Restaurant',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryColor,
                          ),
                          customeSubTitle(
                              subtitle: 'kazi Deiry, Taiger Pass,Chittagong',
                              fontsize: 12)
                        ],
                      ),
                      SizedBox(height: 24),
                      Image.asset('assets/images/details_banner.png'),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: primaryColor,
                                  ),
                                  SizedBox(width: 4),
                                  customeSubTitle(
                                      subtitle: 'Open today', fontsize: 12)
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  '10:00 AM - 12:00 PM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.directions),
                            label: Text(
                              'Visit the Restaurant',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.lightBlue,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(142, 20),
                                primary: Colors.transparent),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(1.0, 1.0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SizedBox(
                        // width: 341,
                        height: 38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              // width: 217,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  customeTitle(
                                      titel: 'List other restaurant',
                                      fontsize: 16),
                                  customeSubTitle(
                                    fontsize: 12,
                                    subtitle:
                                        'check the menu at this restaurant',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'See All',
                                    style: TextStyle(
                                      color: Color(0xFF6B7280),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Color(0xFF6B7280),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Card(
                      child: SizedBox(
                        height: 88,
                        width: 340,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, bottom: 12, right: 8),
                              child: Image.asset(
                                'assets/images/booking1.png',
                                width: 64,
                                height: 64,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: customeTitle(
                                      titel: 'Ambrosia Hotel & Restaurant',
                                      fontsize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 132,
                                        child: customeSubTitle(
                                          fontsize: 10,
                                          subtitle:
                                              'kazi Deiry, Taiger Pass Chittagong',
                                        ),
                                      ),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 88,
                                          minHeight: 28,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   PageTransition(
                                            //     child: BookingDetails(),
                                            //     type: PageTransitionType.fade,
                                            //   ),
                                            // );
                                          },
                                          child: Text('check'),
                                          style: ElevatedButton.styleFrom(
                                            primary: primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 88,
                        width: 340,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, bottom: 12, right: 8),
                              child: Image.asset(
                                'assets/images/booking2.png',
                                width: 64,
                                height: 64,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: customeTitle(
                                      titel: 'Tava Restaurant',
                                      fontsize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 132,
                                        child: customeSubTitle(
                                          fontsize: 10,
                                          subtitle:
                                              'Zakir Hossain Rd, Chittagong',
                                        ),
                                      ),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 88,
                                          minHeight: 28,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   PageTransition(
                                            //     child: BookingDetails(),
                                            //     type: PageTransitionType.fade,
                                            //   ),
                                            // );
                                          },
                                          child: Text('check'),
                                          style: ElevatedButton.styleFrom(
                                            primary: primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        height: 88,
                        width: 340,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, bottom: 12, right: 8),
                              child: Image.asset(
                                'assets/images/booking3.png',
                                width: 64,
                                height: 64,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: customeTitle(
                                      titel: 'Haatkhola',
                                      fontsize: 16,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 132,
                                        child: customeSubTitle(
                                          fontsize: 10,
                                          subtitle:
                                              '6 Surson Road,  Chittagong',
                                        ),
                                      ),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          minWidth: 88,
                                          minHeight: 28,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   PageTransition(
                                            //     child: BookingDetails(),
                                            //     type: PageTransitionType.fade,
                                            //   ),
                                            // );
                                          },
                                          child: Text('Check'),
                                          style: ElevatedButton.styleFrom(
                                            primary: primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 85,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13),
              topRight: Radius.circular(13),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0, -1),
                blurRadius: 2,
              )
            ],
          ),
          alignment: Alignment.center,
          child: SizedBox(
            width: 232,
            height: 33,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Booking'),
                style: ElevatedButton.styleFrom(primary: primaryColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget customeAppbar() {
    return Container(
      height: 67,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 229,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                );
              },
            ),
            Text(
              'Details Restaurant',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
