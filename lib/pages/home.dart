import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiktok_clone/util/cofee_tile.dart';
import 'package:tiktok_clone/util/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<dynamic>> coffeeType = [
    ['cappuccino', true],
    ['dark', false],
    ['choklet', false],
    ['blue', false],
    ['cold', false],
    ['white', false],
    ['hot', false],
    ['primiun', false],
    ['top ', false],
    ['hot water ', false],

  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey.shade900,
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: 'Notification',
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 80),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: 'Search',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          
          const SizedBox(height: 30),
          Container(
            height: 40,
            // color: Color.fromARGB(255, 160, 137, 135),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: coffeeType[index][0],
                  isSelected: coffeeType[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),
          Expanded(
            
            child: ListView(
              
              scrollDirection: Axis.horizontal,

                
              children: [

                //  horizontal scroll view
                CofeeTile(
                  CoffeeImagePath:'assets/images/coffee1.jpg',
                  
                  coffeeName: 'black',
                  coffeeprice: '4.20',
                ),


                  
                  CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee2.jpg',
                  
                  coffeeName: 'dark ',
                  coffeeprice: '4.20',
                ),

                CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee3.jpg',
                  
                  coffeeName: 'choclet',
                  coffeeprice: '4.20',
                ),

                CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee4.jpg',
                  
                  coffeeName: 'cold',
                  coffeeprice: '4.20',
                ),

                CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee5.jpg',
                  
                  coffeeName: 'no sugger',
                  coffeeprice: '4.20',
                ),

                CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee6.jpg',
                  
                  coffeeName: 'with-out milk',
                  coffeeprice: '4.20',
                ),

                CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee7.jpg',
                  
                  coffeeName: 'large ',
                  coffeeprice: '4.20',
                ),

                CofeeTile(
                    
                  CoffeeImagePath:'assets/images/coffee8.jpg',
                  
                  coffeeName: 'expensive',
                  coffeeprice: '4.20',
                ),













              ],
            ),
          )
        ],
      ),
    );
  }
}
