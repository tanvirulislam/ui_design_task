import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/widgets/form_title.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appScaffoldBackground,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              SizedBox(height: 61),
              Card(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                elevation: 2,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 44,
                          height: 44,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset(
                              'assets/images/mizan.jpg',
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customeTitle(
                              titel: 'Tanvirul Islam',
                              fontsize: 16,
                            ),
                            SizedBox(height: 2),
                            customeSubTitle(
                              subtitle: 'tanvirul.cse.diu@gmail.com',
                              fontsize: 10,
                            ),
                          ],
                        ),
                        SizedBox(width: 24),
                        Badge(
                          badgeColor: Colors.red,
                          position: BadgePosition(top: -4, end: 1),
                          badgeContent: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFFF9F9F9),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Card(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                elevation: 2,
                child: Container(
                  height: 70,
                  alignment: Alignment.center,
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    title: customeTitle(titel: 'Account Setting', fontsize: 18),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                elevation: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Image.asset('assets/images/language.png'),
                        ),
                        title: customeTitle(titel: 'Language', fontsize: 18),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.feedback_outlined,
                        ),
                        title: customeTitle(titel: 'Feedback', fontsize: 18),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.star_rate_outlined,
                        ),
                        title: customeTitle(titel: 'Rate us', fontsize: 18),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.arrow_upward,
                        ),
                        title: customeTitle(titel: 'New Version', fontsize: 18),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
