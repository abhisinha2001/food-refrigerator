import 'package:flutter/material.dart';

class CaloriePage extends StatefulWidget {
  const CaloriePage({Key? key}) : super(key: key);

  @override
  State<CaloriePage> createState() => _CaloriePageState();
}

class _CaloriePageState extends State<CaloriePage> {
  List<String> images = [
    "Apple",
    "Banana",
    "Carrot",
    "Banana",
    "Carrot",
  ];
  List<String> calories = ["20.6", "30.4", "22.3", "19.8", "22.3"];
  String CalorieSum = "115.4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calorie intake",
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        "Caloreis:${calories[index]}",
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
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  "Today\'s Intake: $CalorieSum",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
