class PlantShape {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temprature;
  final String port;

  PlantShape({
    required this.title,
    required this.discription,
    required this.price,
    required this.height,
    required this.image,
    required this.temprature,
    required this.port,
  });
}

List<PlantShape> plantshape = [
  PlantShape(
      title: "Ferns",
      discription: "A must-have addition to any woodland or shade garden",
      height: "1.0 cm to 50cm",
      temprature: "18c to 25c",
      image: 'assets/shapeplantone.png',
      port: "Self Growing pot",
      price: "49.00"),
  PlantShape(
      title: "Coleus",
      discription:
          "Coleus prefer rich soil that drains well and regular water, and can easily be reproduced from cuttings",
      height: "2 to 5 feet tall",
      temprature: "8c to 25c",
      image: 'assets/shapeplanttwo.png',
      port: "Self Growing pot",
      price: "89.00"),
];
