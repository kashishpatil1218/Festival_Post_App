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
      body: GridView.builder(
        itemCount: festivalList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Stack(children: [
              GestureDetector(
                onTap: () {
                  tempList.add(mainList[index]);
                  Navigator.of(context).pushNamed('/edit');

                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    image: DecorationImage(
                      opacity: 0.7,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        festivalList[index]['img'],
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(2, 5))
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              festivalList[index]['logo'],
                            ),
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //
      //   },
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(30),
      //   ),
      //   backgroundColor: Colors.teal,
      //   child: const Icon(
      //     Icons.edit,
      //     color: Colors.white,
      //   ),
      // ),
    );
  }
}
