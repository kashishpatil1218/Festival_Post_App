import 'package:carousel_slider/carousel_slider.dart';
import 'package:festivalapp/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Start1_Page extends StatefulWidget {
  const Start1_Page({super.key});

  @override
  State<Start1_Page> createState() => _Start1_PageState();
}

class _Start1_PageState extends State<Start1_Page> {
  final myItems = [
    Image.asset('assets/img/bappa.jpg'),
    Image.asset('assets/img/bappa.jpg'),
    Image.asset('assets/img/bappa.jpg'),
    Image.asset('assets/img/bappa.jpg'),
    Image.asset('assets/img/bappa.jpg'),
  ];
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    height: 280,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayInterval: Duration(seconds: 2),
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    }),
                items: myItems,
              ),
            ),
            AnimatedSmoothIndicator(
              activeIndex: myCurrentIndex,
              count: myItems.length,
              effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blueAccent),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 250, top: 10),
                  child: Text(
                    'Bigg Festivals',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        biggFestivalList.length,
                        (index) => BiggFestival(
                            img: biggFestivalList[index],
                            index: index,
                            festName: biggFestNameList[index]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 215, top: 10),
                  child: Text(
                    'Nearest Festivals',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        nearestFestivalList.length,
                        (index) => NearFestival(
                            img: nearestFestivalList[index]['img'],
                            name: nearestFestivalList[index]['name'],
                            index: index),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/login');
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
              'Get Start >> ',
              style: TextStyle(color: Colors.white, fontSize:17),
            )),
          ),
        ),
      ),
    );
  }

  Widget NearFestival(
      {required String img, required String name, required int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade700,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(2, 3))
              ],
              shape: BoxShape.circle,
              color: Colors.blueGrey,
              //borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget BiggFestival(
      {required String img, required int index, required String festName}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade700,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(2, 3))
              ],
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  biggFestivalList[index],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            biggFestNameList[index],
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
