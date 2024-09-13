class Images {
  late String img , name;

  Images(this.img,this.name);
  factory Images.fromMap(Map m1){
    return Images(m1['img'], m1['name']);
  }
}