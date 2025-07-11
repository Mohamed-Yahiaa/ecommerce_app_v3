class Product {
  final String image;
  final String title;
  final String desc;
  final double price;
  final double oldPrice;
  final double discount;
  final double rating;
  final String vote;
  final bool haveRateVote;

  Product({
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rating,
    required this.vote,
    required this.haveRateVote,
  });
}
