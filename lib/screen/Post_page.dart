import 'dart:async';
import 'dart:io';
import 'dart:js_interop';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:festivalapp/utils/global.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

class Post_Page extends StatefulWidget {
  const Post_Page({super.key});

  @override
  State<Post_Page> createState() => _Post_PageState();
}

class _Post_PageState extends State<Post_Page> {

  GlobalKey imgkey =GlobalKey();
  File? _image;
  final picker = ImagePicker();

  Future getImageGallery() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No Image');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
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
        title: Text(
          'Edite the Post ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 320,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(PostImage),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: (_image != null)
                            ? Image.file(
                          _image!,
                          fit: BoxFit.cover,
                        )
                            : Image.asset('assets/image/logo.jpg'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            mail,
                            style: TextStyle(
                                color: defaultcolor, fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            num,
                            style: TextStyle(
                                color: defaultcolor, fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      getImageGallery();
                    },
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: _image != null
                            ? Image.file(
                          _image!.absolute,
                          fit: BoxFit.cover,
                        )
                            : const Center(
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            size: 20,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Add Logo',
                    style: TextStyle(color: Color(0xFFE4C804), fontSize: 12),
                  ),
                  Divider(
                    color: Colors.grey.shade700,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 350),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            mail = txtMAil.text;
                            num = txtNum.text;
                          });
                        },
                        icon: const Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: txtMAil,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'user123@gmail.com',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade800, fontSize: 10),
                            label: Text('website or mail'),
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: txtNum,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: '1235469870',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade800, fontSize: 10),
                            label: Text('Contact Number'),
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade700,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              colorList.length,
                                  (index) => colorMethod(index: index),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE4C804),
                        ),
                        child: IconButton(
                            onPressed: () {

                            },
                            icon: Icon(
                              Icons.save,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        height: 80,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE4C804),
                        ),
                        child: IconButton(
                          onPressed: () async {
                            RenderRepaintBoundary boundry = imgkey
                                .currentContext!
                                .findRenderObject()! as RenderRepaintBoundary;
                                ShareFilesAndScreenshotWidgets().shareScreenshot(
                              imgkey,500,'Image','festival.png','image/png');

                          },
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorMethod({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            defaultcolor = colorList[index];
          });
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1)
            ],
            color: colorList[index],
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
