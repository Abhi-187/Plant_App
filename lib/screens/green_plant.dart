import 'package:flutter/material.dart';
import 'package:plantapptwo/plant.dart';
import 'package:plantapptwo/screens/details.dart';

class GreenPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 30),
                )
              ],
            ),
            Text('Green', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            Text(
              'Plants',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
                child: Container(
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailPage(
                              plant: plants[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: plants[index],
                              child: Image.asset(plants[index].image),
                            ),
                            SizedBox(height: 10),
                            Text(
                              plants[index].title,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              plants[index].discription,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "\$${plants[index].price}",
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("+",
                                        style: TextStyle(fontSize: 22)))
                              ],
                            ),
                            SizedBox(height: 30),
                            Divider(),
                          ],
                        ),
                      ));
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
