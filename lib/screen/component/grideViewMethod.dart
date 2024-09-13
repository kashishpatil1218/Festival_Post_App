import 'package:festivalapp/screen/modal/festModal.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class GrideviewMethod extends StatelessWidget {
  const GrideviewMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: BouncingScrollPhysics(),
        itemCount: FestImgView.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/editingpage');
            img = Images(festivalList[index].img, festivalList[index].name);
          },
          child: Card(
            elevation: 8,
            color: Colors.green.shade100,
            child: ListTile(
              title: Image(
                image: AssetImage(FestImgView[index].img),

              ),
              subtitle: Text(FestImgView[index].name),
            ),
          ),
        ),
      ),
    );
  }
}
