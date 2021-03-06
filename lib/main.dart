import 'package:flutter/material.dart';
// import 'package:food_refrigerator/constants.dart';
import 'package:food_refrigerator/screens/CaloriePage.dart';
import 'package:food_refrigerator/screens/FridgePage.dart';
import 'package:food_refrigerator/screens/screen_Groceries.dart';
import 'screens/screen_Groceries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), //const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FridgePage(),
    CaloriePage(),
    Splash(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank_outlined,
              size: 30,
            ),
            label: 'Fridge',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes_rounded,
              size: 30,
            ),
            label: 'Calorie Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_grocery_store,
              size: 30,
            ),
            label: 'Groceries',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
