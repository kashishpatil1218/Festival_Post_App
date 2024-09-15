import 'dart:async';
import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Post_Page extends StatefulWidget {
  const Post_Page({super.key});

  @override
  State<Post_Page> createState() => _Post_PageState();
}

class _Post_PageState extends State<Post_Page> {
  @override
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

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
        backgroundColor: Color(0xFFE4C804),
        title: Text(
          'Edite the Post ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
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
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: _image!=null ? Image.file(_image!.absolute,fit:BoxFit.cover,)
                          :Center(
                        child: Icon(Icons.add_a_photo_outlined,size: 30,),
                      )
                    ),
                  ),
                  Text(
                    'Add Logo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'user123@gmail.com',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade800, fontSize: 10),
                        label: Text('website or MAil'),
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '1235469870',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade800, fontSize: 10),
                        label: Text('Contact Number'),
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black87,
        color: Color(0xFFE4C804),
        onTap: (index) {},
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.image,
            color: Colors.white,
          ),
          Icon(
            Icons.save,
            color: Colors.white,
          ),
          Icon(
            Icons.share,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
