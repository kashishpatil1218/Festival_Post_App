import 'package:flutter/material.dart';

import '../utils/global.dart';
import 'component/grideViewMethod.dart';
import 'component/listviewMethodw.dart';
import 'modal/festModal.dart';

class View_Page extends StatefulWidget {
  const View_Page({super.key});

  @override
  State<View_Page> createState() => _View_PageState();
}

class _View_PageState extends State<View_Page> {
void initState(){
  FestImgView= festivalList.map((e)=> Images.fromMap((e))).toList();
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isGrid = !isGrid;
              });
            },
            icon: (isGrid)
                ? Icon(Icons.grid_view, color: Colors.white)
                : Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
          )
        ],
      ),
      body: (isGrid) ? GrideviewMethod() : ListviewMethod(),
    );
  }
}
