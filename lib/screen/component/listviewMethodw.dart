// import 'package:festivalapp/screen/modal/festModal.dart';
// import 'package:festivalapp/utils/global.dart';
// import 'package:flutter/material.dart';
//
//
// class ListviewMethod extends StatelessWidget {
//   const ListviewMethod({super.key});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: FestImgView.length,
//         //
//       itemBuilder: (context, Index) => GestureDetector(
//         onTap: () {
//           Navigator.of(context).pushNamed('/');
//           img=Images(festivalList[index].img,festivalList[index].name);
//         },
//         child: Card(
//           elevation: 8,
//           color:Colors.blueAccent,
//           child: ListTile(
//             title: Text(FestImgView[index]['name']),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:festivalapp/screen/modal/festModal.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ListviewMethod extends StatelessWidget {
  const ListviewMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
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
