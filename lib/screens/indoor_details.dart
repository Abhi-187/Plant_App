import 'package:flutter/material.dart';
import 'package:plantapptwo/plant_indoor.dart';
import 'indoor_plant.dart';

import '../plant.dart';

class IndoorDetailPage extends StatelessWidget {
  final PlantIndoor plantindoor;

  const IndoorDetailPage({Key? key, required this.plantindoor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                    ],
                  ),
                  Container(
                    child: Hero(
                      tag: plantindoor.title,
                      child: Image.asset(plantindoor.image),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          plantindoor.title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          plantindoor.discription,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "\$${plantindoor.price}",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child:
                                    Text("+", style: TextStyle(fontSize: 22)))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCard("Height", Icons.height, plantindoor.height),
                  buildCard("Temperature", Icons.thermostat_outlined,
                      plantindoor.temprature),
                  buildCard("Port", Icons.portrait, plantindoor.port),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildCard(String title, IconData icon, String data) {
  return Column(
    children: [
      Icon(icon, color: Colors.white, size: 40),
      SizedBox(height: 10),
      Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 1),
      Text(
        data,
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}
