List biggFestivalList=[
  'assets/img/bigg_bappa.jpeg',
  'assets/img/bigg_diwali.jpg',
  'assets/img/bigg_krishna.jpg',
  'assets/img/Bigg_navaratri.jpg',
  'assets/img/bigg_uttarayan.png',
  'assets/img/Bigg_ram.jpg',
];
// for bigg fest name
List biggFestNameList=[
  'Ganesh Chaturthi',
  'Diwali',
  'Janamashtami',
  'Navaratri',
  'Uttrayan',
  'Ram Navami',
];
// for nearest festival
List nearestFestivalList=[
  {
    'img':'assets/img/near_navaratri.jpg',
    'name':'Navaratri',
  },
  {
    'img':'assets/img/near_dushhera.jpeg',
    'name':'Dushhera',
  },
  {
    'img':'assets/img/near_lakshmiPooja.png',
    'name':'Lakshami Pooja',
  },
  {
    'img':'assets/img/near_diwali.jpg',
    'name':'Diwali',
  },
  {
    'img':'assets/img/milad un nabi.jpg',
    'name':'Eid Mubarak',
  },
  {
    'img':'assets/img/near_durdashtami.jpg',
    'name':'Durgashtami',
  },
  {
    'img':'assets/img/near_onam.jpg',
    'name':'Onam',
  },
  {
    'img':'assets/img/near_christmas.jpg',
    'name':'Marry Christmas',
  },


];



// class TImages{
//   //banners
//   static String Bappa1= "assets/img/bappa.jpg";
// }
//
//
// // body: Column(
// children: [
// SizedBox(
// height: 50,
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: CarouselSlider(
// options: CarouselOptions(
// viewportFraction: 0.9,
// ),
// items: [TRoundedImage(),],
// )
// ),
// ],
// ),
// );
// }
// }
// class TRoundedImage extends StatelessWidget {
//
//
// const TRoundedImage({super.key,required this imgurl,});
//
// @override
// Widget build(BuildContext context) {
// return Container(
// height: 200,
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// color: Colors.blueGrey),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(15),
// child: Image(
// image: AssetImage(TImages.Bappa1),
// fit: BoxFit.cover,
// ),
// ),
// );
// }
// }