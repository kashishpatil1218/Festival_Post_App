import 'package:flutter/material.dart';

import '../utils/global.dart';

class Edit_Page extends StatefulWidget {
  const Edit_Page({super.key});

  @override
  State<Edit_Page> createState() => _Edit_PageState();
}

class _Edit_PageState extends State<Edit_Page> {
  @override
  GlobalKey imgKey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            tempList.removeLast();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.teal,
        title: Text(
          'Edit your Tamplet',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                tempList[0].length,
                (index) => imageMethod(index: index, postList: tempList),
              )
            ],
          ),
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       RepaintBoundary(
      //         key: imgKey,
      //         child: Card(
      //           child: Align(
      //             alignment: Alignment.center,
      //             child: Container(
      //               height: 300,
      //               width: double.infinity,
      //               padding: EdgeInsets.all(10),
      //               decoration: BoxDecoration(
      //                 image: DecorationImage(
      //                   fit: BoxFit.cover,
      //                   image: AssetImage('assets/img/bigg_diwali.jpg'),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  Widget imageMethod({required int index, required List postList}) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
              image: AssetImage(postList[0][index]), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
