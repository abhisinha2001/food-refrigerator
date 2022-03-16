import 'package:flutter/material.dart';

class ChickenEggPage extends StatefulWidget {
  const ChickenEggPage({ Key? key }) : super(key: key);

  @override
  State<ChickenEggPage> createState() => _ChickenEggPageState();
}

class _ChickenEggPageState extends State<ChickenEggPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.grey,
            child: Image.network(
    'data:image/jpeg;base64,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'),
            ),
          
          Container(
            height: 200,
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Chicken Egg",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Icon(Icons.heart_broken),
                    
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ],
            ), 
            
          // child: Text("Quantity: 5"),
          // child: Text("Brand: Tesco"),
          ),
          Container(
            color: Colors.white,
            child: 
               Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center ,

                children: [
                  TextButton(onPressed: (){}, child: const Text('Track Calories') ),
                  TextButton(onPressed: (){}, child: const Text('Add to Groceries') ),
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}