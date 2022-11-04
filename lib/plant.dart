class Plant {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temprature;
  final String port;

  Plant({
    required this.title,
    required this.discription,
    required this.price,
    required this.height,
    required this.image,
    required this.temprature,
    required this.port,
  });
}

List<Plant> plants = [
  Plant(
      title: "Turf Pot Plant",
      discription: "Small leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image: 'assets/plantone.png',
      port: "Self Growing pot",
      price: "59.00"),
  Plant(
      title: "Scandinavain",
      discription: "Small leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image: 'assets/planttwo.png',
      port: "Self Growing pot",
      price: "59.00"),
];
