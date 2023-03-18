import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_task/const.dart';
import 'package:ui_design_task/widgets/form_title.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'assets/images/banner1.png',
      'assets/images/banner1.png',
    ];

    List<String> listviewPic = [
      'assets/images/listview1.png',
      'assets/images/listview2.png',
      'assets/images/listview3.png',
    ];
    int index = 0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: appScaffoldBackground,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: appScaffoldBackground,
          centerTitle: true,
          // automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 16,
                color: primaryColor,
              ),
              Text(
                'Agrabad 435, Chittagong',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: [
            ClipRRect(
              // clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(150),
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.fitWidth,
                width: 32,
                height: 32,
              ),
            ),
            SizedBox(width: 15),
          ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 18),
              Center(
                child: SizedBox(
                  width: 280,
                  height: 36,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE6E7E9),
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 12),
                      prefixIcon: Icon(
                        Icons.search_outlined,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 28),
              CarouselSlider(
                items: items
                    .map(
                      (e) => Container(
                        width: 280,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(e),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: 120,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 18),
              Image.asset('assets/images/indicator.png'),
              SizedBox(height: 36),
              SizedBox(
                width: 341,
                height: 38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 217,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customeTitle(
                              titel: 'Today New Arivable', fontsize: 16),
                          customeSubTitle(
                              fontsize: 12,
                              subtitle: 'Best of the today food list update'),
                        ],
                      ),
                    ),
                    SizedBox(width: 60),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Color(0xFF6B7280)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: SizedBox(
                    height: 196,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Card(
                          elevation: 2,
                          child: Container(
                            height: 196,
                            width: 148,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Image.asset('assets/images/frame1.png'),
                                ),
                                customeTitle(
                                    titel: 'Chicken Biryani', fontsize: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 114,
                                      child: customeSubTitle(
                                        subtitle: "Ambrosia Hotel & Restaurant",
                                        fontsize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 2,
                          child: Container(
                            height: 196,
                            width: 148,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Image.asset('assets/images/frame2.png'),
                                ),
                                customeTitle(
                                    titel: 'Sauce Tonkatsu ', fontsize: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 114,
                                      child: customeSubTitle(
                                        subtitle:
                                            "Handi Restaurant, Chittagong",
                                        fontsize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 2,
                          child: Container(
                            height: 196,
                            width: 148,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child:
                                      Image.asset('assets/images/frame1.png'),
                                ),
                                customeTitle(
                                    titel: 'Chicken Biryani', fontsize: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: primaryColor,
                                    ),
                                    SizedBox(
                                      width: 114,
                                      child: customeSubTitle(
                                        subtitle: "Ambrosia Hotel & Restaurant",
                                        fontsize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 36),
              SizedBox(
                width: 341,
                height: 38,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 217,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          customeTitle(
                              titel: 'Booking Restaurant', fontsize: 16),
                          customeSubTitle(
                              fontsize: 12,
                              subtitle: 'Check your city Near by Restaurant'),
                        ],
                      ),
                    ),
                    SizedBox(width: 60),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Color(0xFF6B7280)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 340,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: SizedBox(
                        height: 88,
                        width: 340,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, bottom: 12, right: 5),
                              child: Image.asset(
                                listviewPic[index],
                                width: 64,
                                height: 64,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  customeTitle(
                                    titel: 'Ambrosia Hotel & Restaurant',
                                    fontsize: 16,
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
                                          onPressed: () {},
                                          child: Text('Book'),
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
