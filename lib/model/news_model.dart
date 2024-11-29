class NewsModel {
  final String image;
  final String headline;
  final String category;
  final String time;
  final bool isFeatured;

  NewsModel(
      {required this.image,
      required this.headline,
      this.isFeatured = false,
      required this.category,
      required this.time});
}

List<NewsModel> newsDemoList = [
  NewsModel(
      image: "assets/images/image_elon_musk.png",
      headline:
          "Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy",
      category: "CoinDesk",
      time: "2h",
      isFeatured: true),
  NewsModel(
    image: "assets/images/image_elon_musk.png",
    headline: "Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy",
    category: "CoinDesk",
    time: "2h",
  ),
  NewsModel(
    image: "assets/images/image_elon_musk.png",
    headline: "Ethereum Co-founder opposes El-salvador Bitcoin Adoption policy",
    category: "CoinDesk",
    time: "2h",
  )
];
