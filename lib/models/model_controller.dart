const profilebgColor = 0xff1A2530;
const heyTextColor = 0xff707B81;
const profileTextColor = 0xffFFFFFF;
const PPIconsColor = 0xff2D3B48;
const titleColor = 0xff1A2530;
const subtitleColor = 0xff5B9EE1;

class NikeModel {
  String? title1;
  String? title2;
  String? qulity;
  String? price;
  String? images;

  NikeModel({this.title1, this.title2, this.qulity, this.price, this.images});
}

List<NikeModel> NikeModel1 = [
  NikeModel(
      title1: 'Nike Jordan',
      qulity: 'Best Seller',
      price: '\$493.00',
      images: 'PngItem.png'),
  NikeModel(
      title2: 'Nike Air Max',
      qulity: 'Best Seller',
      price: '\$897.99',
      images: 'nike_2.png'),
];
