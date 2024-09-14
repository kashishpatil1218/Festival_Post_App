import '../screen/modal/festModal.dart';

List biggFestivalList = [
  'assets/img/bigg_bappa.jpeg',
  'assets/img/bigg_diwali.jpg',
  'assets/img/bigg_krishna.jpg',
  'assets/img/Bigg_navaratri.jpg',
  'assets/img/bigg_uttarayan.png',
  'assets/img/Bigg_ram.jpg',
];
// for bigg fest name
List biggFestNameList = [
  'Ganesh Chaturthi',
  'Diwali',
  'Janamashtami',
  'Navaratri',
  'Uttrayan',
  'Ram Navami',
];
// for nearest festival
List nearestFestivalList = [
  {
    'img': 'assets/img/near_navaratri.jpg',
    'name': 'Navaratri',
  },
  {
    'img': 'assets/img/near_dushhera.jpeg',
    'name': 'Dushhera',
  },
  {
    'img': 'assets/img/near_lakshmiPooja.png',
    'name': 'Lakshami Pooja',
  },
  {
    'img': 'assets/img/near_diwali.jpg',
    'name': 'Diwali',
  },
  {
    'img': 'assets/img/milad un nabi.jpg',
    'name': 'Eid Mubarak',
  },
  {
    'img': 'assets/img/near_durdashtami.jpg',
    'name': 'Durgashtami',
  },
  {
    'img': 'assets/img/near_onam.jpg',
    'name': 'Onam',
  },
  {
    'img': 'assets/img/near_christmas.jpg',
    'name': 'Marry Christmas',
  },
];

//template list
List templateList = [
  'assets/img/ganeshtampalte1.jpeg',
  'assets/img/navaratriTemplet.jpeg',
  'assets/img/utrayantemplate.jpeg',
  'assets/img/diwalitemplate.jpg',
  'assets/img/chritsmastempate.jpeg',
  'assets/img/eidtempalate.png',
  'assets/img/onamtemplate.jpg',
  'assets/image/Rakhitamplate.jpeg',
];

bool isGrid = false;
Images? img;
List FestImgView = [];
List tempList = [];
int tempIndex=0;
List festivalList = [
  {
    'img': 'assets/image/ganesh_view.jpg',
    'name': 'Ganesh Chaturthi',
    'logo': 'assets/image/ganesh_logo.jpeg',
  },
  {
    'img': 'assets/image/pongal_view.jpg',
    'name': 'Pongal',
    'logo': 'assets/image/pongal_logo.jpeg',
  },
  {
    'img': 'assets/image/makarsankranti_view.jpg',
    'name': 'Makarsankranti',
    'logo': 'assets/image/makarsankranti_logo.jpeg',
  },
  {
    'img': 'assets/image/shiv_view.jpg',
    'name': 'MAhashivratri',
    'logo': 'assets/image/siv_logo.jpg',
  },
  {
    'img': 'assets/image/holi_view.jpg',
    'name': 'Holi',
    'logo': 'assets/image/holi_logo.jpeg',
  },
  {
    'img': 'assets/image/gudipadwa_view.jpg',
    'name': 'Gudi Padwa',
    'logo': 'assets/image/gudi_logo.png',
  },
  {
    'img': 'assets/image/Ram_view.jpg',
    'name': 'Ram Navmi',
    'logo': 'assets/image/ram_logo.jpeg',
  },
  {
    'img': 'assets/image/mahavir_view.jpg',
    'name': 'Mahavir Jayanti',
    'logo': 'assets/image/mahavir_logo.jpeg',
  },
  {
    'img': 'assets/image/republic_view.jpeg',
    'name': 'Rebulic Day',
    'logo': 'assets/image/republic_logo.jpeg',
  },
  {
    'img': 'assets/image/independence_view.jpg',
    'name': 'Independence Day',
    'logo': 'assets/image/independence_logo.jpeg',
  },
  {
    'img': 'assets/image/navratri_view.jpg',
    'name': 'Navaratri',
    'logo': 'assets/image/navaratri_logo.jpeg',
  },
  {
    'img': 'assets/image/dussehra_view.jpg',
    'name': 'Dussehra',
    'logo': 'assets/image/Dussehra_log.jpeg',
  },
  {
    'img': 'assets/image/diwali_view.jpg',
    'name': 'Diwali',
    'logo': 'assets/image/Diwali_logo.png',
  },
  {
    'img': 'assets/image/eid_view.jpeg',
    'name': 'Eid',
    'logo': 'assets/image/Eid_logo.jpeg',
  },
  {
    'img': 'assets/image/christmas_view.jpeg',
    'name': 'Christmas',
    'logo': 'assets/image/Christmas_logo.jpeg',
  },
  {
    'img': 'assets/image/onam_view.jpeg',
    'name': 'Onam',
    'logo': 'assets/image/Onam_logo.jpeg',
  },
  {
    'img': 'assets/image/Rakhi_view.jpeg',
    'name': 'Rakshabandhan',
    'logo': 'assets/image/Rakhi_logo.jpeg',
  },
];

//////forr edite

List mainList = [
  [
    'assets/image/Bappa1.jpeg',
    'assets/image/Bappa2.jpeg',
    'assets/image/Bappa3.jpeg',
    'assets/image/Bappa4.jpeg',
    'assets/image/Bappa5.jpeg',
  ], //1
  [
    'assets/image/Pongal1.jpeg',
    'assets/image/Pongal2.jpeg',
    'assets/image/Pongal3.jpeg',
    'assets/image/Pongal4.jpeg',
    'assets/image/Pongal5.jpeg',
  ], //// 2
  [
    'assets/image/MakarSankranti1.jpeg',
    'assets/image/MakarSankranti2.jpeg',
    'assets/image/MakarSankranti3.jpeg',
    'assets/image/MakarSankranti4.jpeg',
    'assets/image/MakarSankranti5.jpeg',
  ], //
  [
    'assets/image/MahaShivRatri1.jpeg',
    'assets/image/MahaShivRatri2.png',
    'assets/image/MahaShivRatri3.jpeg',
    'assets/image/MahaShivRatri4.jpeg',
    'assets/image/MahaShivRatri5.jpeg',
  ], //
  [
    'assets/image/Holi1.jpeg',
    'assets/image/Holi2.jpeg',
    'assets/image/Holi3.jpeg',
    'assets/image/Holi4.jpeg',
    'assets/image/Holi5.jpeg'
  ], //2// 4
  [
    'assets/image/GudiPdwa1.jpeg',
    'assets/image/GudiPdwa2.jpeg',
    'assets/image/GudiPdwa3.jpeg',
    'assets/image/GudiPdwa4.jpeg',
    'assets/image/GudiPdwa5.jpeg',
  ], //7

  [
    'assets/image/RamNavami1.jpeg',
    'assets/image/RamNavami2.jpeg',
    'assets/image/RamNavami3.jpeg',
    'assets/image/RamNavami4.jpeg',
    'assets/image/RamNavami5.jpeg',
  ], //8
  [
    'assets/image/MahavirJayanti1.jpeg',
    'assets/image/MahavirJayanti2.jpeg',
    'assets/image/MahavirJayanti3.jpeg',
    'assets/image/MahavirJayanti4.jpeg',
    'assets/image/MahavirJayanti5.jpeg',
  ], //9
  [
    'assets/image/RepublicDay1.jpeg',
    'assets/image/RepublicDay2.jpeg',
    'assets/image/RepublicDay3.jpeg',
    'assets/image/RepublicDay4.jpeg',
    'assets/image/RepublicDay5.jpeg',
  ], //10
  [
    'assets/image/Independence4.jpeg',
    'assets/image/Independence3.jpeg',
    'assets/image/Independence1.jpeg',
    'assets/image/Independence2.jpeg',
    'assets/image/Independence5.jpeg',
  ], //11

  [
    'assets/image/DuraPooja1.jpeg',
    'assets/image/DuraPooja2.jpeg',
    'assets/image/DuraPooja3.jpeg',
    'assets/image/DuraPooja4.jpeg',
    'assets/image/DuraPooja5.jpeg',
  ], //12
  [
    'assets/image/Dussehra1.jpeg',
    'assets/image/Dussehra2.jpeg',
    'assets/image/Dussehra3.jpeg',
    'assets/image/Dussehra4.jpeg',
    'assets/image/Dussehra5.jpeg',
  ], //13
  [
    'assets/image/Diwali1.jpeg',
    'assets/image/Diwali2.jpeg',
    'assets/image/Diwali3.jpeg',
    'assets/image/Diwali4.jpeg',
    'assets/image/Diwali5.jpeg'
  ], //1
  [
    'assets/image/Eid1.jpeg',
    'assets/image/Eid2.png',
    'assets/image/Eid3.jpeg',
    'assets/image/Eid4.jpeg',
    'assets/image/Eid5.jpeg',
  ], //14
  [
    'assets/image/Christmas1.jpeg',
    'assets/image/Christmas2.jpeg',
    'assets/image/Christmas3.jpeg',
    'assets/image/Christmas4.jpeg',
    'assets/image/Christmas5.jpeg',
  ], //15
  [
    'assets/image/Onam1.jpeg',
    'assets/image/Onam2.jpeg',
    'assets/image/Onam3.jpeg',
    'assets/image/Onam4.jpeg',
    'assets/image/Onam5.jpeg',
  ], //16
  [
    'assets/image/Rakhi1.jpeg',
    'assets/image/Rakhi2.jpeg',
    'assets/image/Rakhi3.jpeg',
    'assets/image/Rakhi4.jpeg',
    'assets/image/Rakhi5.jpeg',
  ], //17
];
