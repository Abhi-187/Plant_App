class PlantIndoor {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temprature;
  final String port;

  PlantIndoor({
    required this.title,
    required this.discription,
    required this.price,
    required this.height,
    required this.image,
    required this.temprature,
    required this.port,
  });
}

List<PlantIndoor> plantsindoor = [
  PlantIndoor(
      title: "Epipremnum Aureum",
      discription:
          "Pothos, Devil’s Ivy or the money plant is green and deep yellow leaved plant that is the most tolerant and adaptable across cultivars.",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image: 'assets/indoorplantone.png',
      port: "Self Growing pot",
      price: "9.00"),
  PlantIndoor(
      title: "Juniper Bonsai",
      discription: "It requires regular watering, but don't overdo it",
      height: "20.0 cm to 500cm",
      temprature: "8c to 88c",
      image: 'assets/indoorplanttwo.png',
      port: "Self Growing pot",
      price: "99.00"),
];
