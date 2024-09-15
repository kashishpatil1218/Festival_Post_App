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
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            tempList.removeLast();
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
        backgroundColor: Color(0xFFE4C804),
        centerTitle: true,
        title: Text(
          'Edit your Tamplet',
          style: TextStyle(color: Colors.white, fontSize: 18),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/post');
        },
        backgroundColor: Color(0xFFE4C804),
        child: Icon(Icons.edit,color: Colors.white,),
      ),
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
