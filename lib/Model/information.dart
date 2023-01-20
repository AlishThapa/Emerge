class Information {
  String image;
  String category;
  String deviceName;
  String price;

  Information(
      {required this.image,
      required this.category,
      required this.deviceName,
      required this.price});
}

List<Information> information = [
  Information(
      image: 'assets/image/SamsungS10.png',
      category: 'Phones',
      deviceName: 'SamsungS10',
      price: '\$ 180,000'),
  Information(
      image: 'assets/image/PS5console.png',
      category: 'Games',
      deviceName: 'Play Station 5 console',
      price: '\$ 90,000'),
  Information(
      image: 'assets/image/PS5consolered.png',
      category: 'Games',
      deviceName: 'Play Station 5 console',
      price: '\$ 95,000'),
];
