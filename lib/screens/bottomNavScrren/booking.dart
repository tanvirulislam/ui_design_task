import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/screens/booking_details.dart';
import 'package:ui_design_task/widgets/form_title.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: customeAppbar(),
          preferredSize: Size(
            double.infinity,
            67,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: BookingDetails(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: Card(
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
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                              child: BookingDetails(),
                                              type: PageTransitionType.fade,
                                            ),
                                          );
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
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: BookingDetails(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: Card(
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
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                              child: BookingDetails(),
                                              type: PageTransitionType.fade,
                                            ),
                                          );
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
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: BookingDetails(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: Card(
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
                                        subtitle: '6 Surson Road,  Chittagong',
                                      ),
                                    ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: 88,
                                        minHeight: 28,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                              child: BookingDetails(),
                                              type: PageTransitionType.fade,
                                            ),
                                          );
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
                ),
                SizedBox(height: 12),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: BookingDetails(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  label: Text('Booking more'),
                  icon: Icon(
                    Icons.add,
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(182, 49),
                    primary: Colors.white,
                    onPrimary: Color(0xFF6B7280),
                  ),
                ),
              ],
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
      child: Center(
        child: Text(
          'Booking History',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
