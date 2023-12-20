// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CofeeTile extends StatelessWidget {
  final String CoffeeImagePath;
  final String coffeeName;
  final String coffeeprice;

  CofeeTile({
    required this.CoffeeImagePath,
    required this.coffeeName,
    required this.coffeeprice,

  }
  );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 22, bottom: 30),
      child: Container(
        padding: const EdgeInsets.all(20),

        width: 260,
        // color: Color.fromARGB(255, 8, 3, 3),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // coffee i
            
            //mage

            ClipRRect(
              
              borderRadius: BorderRadius.circular(22),
              child: Container(
                
                child: Image.asset(CoffeeImagePath,fit: BoxFit.cover,
                height: 350,
                width: 250,),
                
                )
              ,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),

            Text(
              "white Almond Milk",
              style: TextStyle(color: Colors.grey),
            ),

// ///////////////////////////////////////

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$ '+ coffeeprice),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(22)),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
