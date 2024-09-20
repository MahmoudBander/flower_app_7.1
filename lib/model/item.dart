class Item {
  String imgPath;
  double price;
  String location;
  Item({required this.imgPath, required this.price, this.location = "main branch"});
}

final List<Item> items = [
  Item(price: 12.99, imgPath: "assets/1.webp",location: "Mahmoud Shop"),
  Item(price: 12.99, imgPath: "assets/2.webp"),
  Item(price: 12.99, imgPath: "assets/3.webp"),
  Item(price: 12.99, imgPath: "assets/4.webp"),
  Item(price: 12.99, imgPath: "assets/5.webp"),
  Item(price: 12.99, imgPath: "assets/6.webp"),
  Item(price: 12.99, imgPath: "assets/7.webp"),
  Item(price: 12.99, imgPath: "assets/8.webp"),
];
