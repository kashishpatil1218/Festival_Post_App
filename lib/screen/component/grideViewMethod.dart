import 'dart:async';

import 'dart:ui';

import 'package:festivalapp/screen/modal/festModal.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class GrideviewMethod extends StatelessWidget {
  const GrideviewMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              festivalList.length,
              (index) => GridViewMethod(
                img: festivalList[index]['img'],
                name: festivalList[index]['name'],
                logo: festivalList[index]['logo'],
                index: index,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        child: Icon(Icons.edit,color: Colors.white,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }

  Widget GridViewMethod(
      {required String img,
      required String name,
      required String logo,
      required int index}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Stack(
            children: [
              Container(
                height: 190,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: (0.7),
                    image: AssetImage(img),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(logo),
                          ),
                          color: Colors.white,
                          shape: BoxShape.circle),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: Stack(
            children: [
              Container(
                height: 190,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: (0.7),
                    image: AssetImage(img),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(logo),
                          ),
                          color: Colors.white,
                          shape: BoxShape.circle),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: GridView.builder(
// gridDelegate:
// SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
// physics: BouncingScrollPhysics(),
// itemCount: FestImgView.length,
// itemBuilder: (context, index) => GestureDetector(
// onTap: () {
// Navigator.of(context).pushNamed('/editingpage');
// img = Images(festivalList[index].img, festivalList[index].name);
// },
// child: Card(
// elevation: 8,
// color: Colors.green.shade100,
// child: ListTile(
// title: Image(
// image: AssetImage(FestImgView[index].img),
//
// ),
// subtitle: Text(FestImgView[index].name),
// ),
// ),
// ),
// ),
// );
