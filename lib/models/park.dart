class Park {
  final String title;
  final String image;
  final String distance;
  final String price;
  final ParkType? type;
  final String? typeText;
  final double? ratingStar;
  final double? ratingCount;

  Park({
    required this.title,
    required this.image,
    required this.distance,
    required this.price,
    this.type,
    this.typeText,
    this.ratingStar,
    this.ratingCount,
  });
}

enum ParkType { discount, popular }

var parks = [
  Park(
      title: "Maros Park",
      image: "assets/images/park_1.png",
      distance: "1.3km",
      price: "\$5/hr",
      type: ParkType.discount,
      typeText: "Off 50%"),
  Park(
      title: "Panakukang Park",
      image: "assets/images/park_2.png",
      distance: "1.9km",
      price: "\$5/hr",
      type: ParkType.popular,
      typeText: "Popular"),
  Park(
      title: "Pangkep Park",
      image: "assets/images/park_3.png",
      distance: "2.3km",
      price: "\$5/hr",
      type: ParkType.popular,
      typeText: "Popular"),
];

var mores = [
  Park(
    title: "Senayan",
    image: "assets/images/kota_baru.png",
    distance: "5.3km",
    price: "\$5/hr",
    ratingStar: 5,
    ratingCount: 1000,
  ),
  Park(
    title: "Senayan",
    image: "assets/images/senayan.png",
    distance: "5.3km",
    price: "\$5/hr",
    ratingStar: 3,
    ratingCount: 14593,
  ),
  Park(
    title: "Senayan",
    image: "assets/images/kota_baru.png",
    distance: "5.3km",
    price: "\$5/hr",
    ratingStar: 5,
    ratingCount: 1000,
  ),
  Park(
    title: "Senayan",
    image: "assets/images/senayan2.png",
    distance: "5.3km",
    price: "\$5/hr",
    ratingStar: 3,
    ratingCount: 14593,
  ),
];
