class Product{
  String name;
  String price;
  int count;
  String image;

  Product(this.name, this.price, this.count, this.image);
}

List<Product> productList = [
  Product("item 1", "100\$",  0, "assets/icons/apple.png"),
  Product("item 2", "200\$",  0, "assets/icons/banana.png"),
  Product("item 3", "300\$",  0, "assets/icons/grapes.png"),
  Product("item 4", "400\$",  0, "assets/icons/kiwi.png"),
  Product("item 5", "500\$",  0, "assets/icons/mango.png"),
  Product("item 6", "600\$",  0, "assets/icons/orange.png"),
  Product("item 7", "700\$",  0, "assets/icons/watermelon.png"),
  Product("item 8", "800\$",  0, "assets/icons/apple.png"),
  Product("item 9", "900\$",  0, "assets/icons/banana.png"),
];