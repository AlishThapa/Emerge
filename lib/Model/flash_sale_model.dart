import 'package:flutter/material.dart';

class FlashSaleModel {
  String image;
  Icon icon;
  String category;
  String categoryheader;
  String price;

  FlashSaleModel(
      {required this.image,
        required this.icon,
      required this.category,
      required this.categoryheader,

      required this.price});
}

List<FlashSaleModel> saleModel = [
  FlashSaleModel(
    image: 'assets/image/reebook.png',
    icon: Icon(Icons.person),
    category: 'Kids',
    categoryheader: 'New balance\n sneakers',

    price: '\$ 33,00',
  ),
  FlashSaleModel(
    image: 'assets/image/reebook.png',
    icon: Icon(Icons.person),
    category: 'Kids',
    categoryheader: 'New balance\n sneakers',

    price: '\$ 22,50',
  ),

];
