import 'package:flutter/material.dart';

class food extends StatefulWidget {
  const food({Key? key}) : super(key: key);

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  List<String> images = [
    "Apple",
    "Banana",
    "Carrot",
    "Banana",
    "Carrot",
  ];
  List<String> quantities = ["20.6", "30.4", "22.3", "19.8", "22.3"];
  String CalorieSum = "115.4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "In Your Fridge",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
              // ignore: avoid_types_as_parameter_names
              itemBuilder: (BuildContext, index) {
                return Container(
                  height: 100,
                  child: Card(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(20),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("assets/images/${images[index]}.jpeg"),
                      ),
                      title: Text(
                        images[index],
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Caloreis:${quantities[index]}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: images.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              scrollDirection: Axis.vertical,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: ListView.builder(
                  //gridDelegate: ...,
                  //crossAxisSpacing: 10,
                  // mainAxisSpacing: 2),
                  itemBuilder: (BuildContext, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x000005cc),
                          blurRadius: 30,
                          //  offset: Offset(10, 10))
                        )
                      ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/${images[index]}.jpeg"),
                      Text(
                        quantities[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "S/." + quantities[index].toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
