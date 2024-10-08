

import 'package:festivalapp/screen/modal/festModal.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ListviewMethod extends StatelessWidget {
  const ListviewMethod({super.key});





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...List.generate(
              festivalList.length,
              (index) => ListViewMethod(
                  isName: false,
                  img: festivalList[index]['img'],

                logo: festivalList[index]['logo'],
                index: index,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/edit');
        },
        child: Icon(Icons.edit,color: Colors.white,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }

  Widget ListViewMethod(
      {required String img,
        required bool isName ,
      required String logo,
      required int index}) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            GestureDetector(
              onTap:
              () {

              },
              child: Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade800,
                        spreadRadius: 2,
                        blurRadius:5,
                        offset: Offset(0, 4))
                  ],
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    opacity: 0.7,
                    image: AssetImage(
                      img,
                    ),
                  ),
                ),
                child: ListTile(
                  title: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5, bottom: 14),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 2,
                                    blurRadius: 8)
                              ],
                              color: Colors.black,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(logo),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Icon(Icons.edit,color: Colors.white,size: 20,),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}



