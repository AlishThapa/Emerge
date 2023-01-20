import 'package:flutter/material.dart';

class GadgetModel {
  Icon icon;
  String type;

  GadgetModel({required this.icon, required this.type});
}

List<GadgetModel> gadgetModel = [
  GadgetModel(
      icon: const Icon(Icons.phone_android_outlined,
          color: Colors.black, size: 20),
      type: 'Phones'),
  GadgetModel(
      icon: const Icon(Icons.headphones, color: Colors.black, size: 20),
      type: 'Headphones'),
  GadgetModel(
      icon: const Icon(Icons.videogame_asset_sharp,
          color: Colors.black, size: 20),
      type: 'Games'),
  GadgetModel(
    icon: const Icon(Icons.toys, color: Colors.black, size: 20),
    type: 'Cars',
  ),
  GadgetModel(
    icon: const Icon(Icons.bed, color: Colors.black, size: 20),
    type: 'furniture',
  ),
  GadgetModel(
    icon: const Icon(Icons.smart_toy_outlined, color: Colors.black, size: 20),
    type: 'Kids',
  ),
];
