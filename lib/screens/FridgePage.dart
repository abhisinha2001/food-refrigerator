import 'package:flutter/material.dart';
import 'package:food_refrigerator/screens/myscreen.dart';
import 'package:food_refrigerator/screens/screen_Groceries.dart';

class FridgePage extends StatefulWidget {
  const FridgePage({Key? key}) : super(key: key);

  @override
  State<FridgePage> createState() => _FridgePageState();
}

class _FridgePageState extends State<FridgePage> {
  List<String> images = [
    "Apple",
    "Carrot",
    "Banana",
  ];
  List<String> quantities = ["2", "5", "3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "In my Fridge",
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
                        "Quanity:${quantities[index]}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.add_box,
                        color: Colors.green,
                        size: 40,
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Splash()),
                );
              },
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    "Go to Groceries",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
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
