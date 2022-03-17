import 'dart:ui';
// ignore: implementation_imports
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        elevation: 0,
      ),
      body: Container(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                        'https://images.immediate.co.uk/production/volatile/sites/30/2020/02/Red-peppers-afa27f8.jpg?quality=90&resize=661%2C600',
                        width: 100),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        child: Text(
                                            'Bell Pepper Red'.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    Container(
                                      child: Icon(
                                        Icons.close,
                                        size: 20,
                                      ),
                                    )
                                  ]),
                              Text(
                                "1.50€".toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '-'.toString(),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 20,
                                      child: Center(
                                        child: Text('1'.toString()),
                                      )),
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '+'.toString(),
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    )
                  ])),
          Card(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                        'https://pngimg.com/uploads/egg/egg_PNG97977.png',
                        width: 100),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        child: Text(
                                            'Egg Chicken Red'.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    Container(
                                      child: Icon(
                                        Icons.close,
                                        size: 20,
                                      ),
                                    )
                                  ]),
                              Text(
                                "1.99".toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '-'.toString(),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 20,
                                      child: Center(
                                        child: Text('1'.toString()),
                                      )),
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '+'.toString(),
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    )
                  ])),
          Card(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                        'https://www.kindpng.com/picc/m/274-2746289_free-banana-png-transparent-background-bananas-png-png.png',
                        width: 100),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        child: Text(
                                            'Organic Bananas'.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    Container(
                                      child: Icon(
                                        Icons.close,
                                        size: 20,
                                      ),
                                    )
                                  ]),
                              Text(
                                "1.99€".toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '-'.toString(),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 20,
                                      child: Center(
                                        child: Text('1'.toString()),
                                      )),
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '+'.toString(),
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    )
                  ])),
          Card(
              margin: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                        'https://w7.pngwing.com/pngs/828/393/png-transparent-ginger-ale-seed-vegetable-plant-ginger-herbaceous-plant-food-nutrition-thumbnail.png',
                        width: 100),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        child: Text('Ginger'.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                    Container(
                                      child: Icon(
                                        Icons.close,
                                        size: 20,
                                      ),
                                    )
                                  ]),
                              Text(
                                "1.99€".toString(),
                                style: TextStyle(color: Colors.grey),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '-'.toString(),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                side: BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 20,
                                      child: Center(
                                        child: Text('1'.toString()),
                                      )),
                                  Container(
                                    child: TextButton(
                                      child: Text(
                                        '+'.toString(),
                                        style: const TextStyle(
                                            color: Colors.green, fontSize: 30),
                                      ),
                                      onPressed: () => null,
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                side: const BorderSide(
                                                    color: Colors.grey))),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    )
                  ]))
        ],
      )),
      floatingActionButton: TextButton(
        child: const Text('Checkout',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        onPressed: () {
          print("Button was pressed");
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(370, 80)),
          backgroundColor: MaterialStateProperty.all(Colors.green),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Colors.green))),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
