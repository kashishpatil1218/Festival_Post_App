import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class personal_Page extends StatefulWidget {
  const personal_Page({super.key});

  @override
  State<personal_Page> createState() => _personal_PageState();
}

class _personal_PageState extends State<personal_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFE4C804),
        centerTitle: true,
        title: Text(
          'Personal Detail',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/image/pf.png',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Kashish Gujjar',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey.shade700,
          ),
          Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    nameList.length,
                    (index) => nametheText(
                        name: nameList[index]['name'],
                        icon: nameList[index]['Icon']),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget nametheText({required String name, required IconData icon}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
               name,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Icon(
              icon,
              color: Color(0xFFE4C804),
            )
          ],
        ),
      ],
    );
  }
}

List nameList = [
  {
    'name': 'Popular',
    'Icon': Icons.arrow_forward_ios,
  },
  {
    'name': 'New Apload',
    'Icon': Icons.arrow_forward_ios,
  },
  {
    'name': 'Light theme',
    'Icon': Icons.arrow_forward_ios,
  },
  {
    'name': 'Dark theme',
    'Icon': Icons.arrow_forward_ios,
  },
  {
    'name': 'Settings',
    'Icon': Icons.arrow_forward_ios,
  },
];
