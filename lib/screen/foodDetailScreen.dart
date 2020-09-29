import 'package:flutter/material.dart';

class FoodDetailScreen extends StatefulWidget {
  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  final List<String> foods = [
    'assets/images/tomato.jpg',
    'assets/images/cherry.jpg',
    'assets/images/dragon.jpg',
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < foods.length -1) {
        currentIndex ++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex --;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          iconSize: 35,
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Transform.scale(
              scale: 0.6,
              child: IconButton(
                icon: Image.asset('assets/icons/sopping.png'),
                onPressed: (){},
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: Container(
                width: double.infinity,
                height: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(foods[currentIndex]),
                  fit: BoxFit.cover
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                    Container(
                      width: 90,
                      margin: EdgeInsets.only(bottom: 39),
                      child: Row(
                        children: _buildIndicator(),
                      ),
                    ),
                   ],
                ),
              ),
            ),
            Flexible(
              child: Transform.translate(
                offset: Offset( 0, -18),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                    )
                  ),
                  child: Stack(
                    children:[
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            top: 23,
                          left: 25),
                            child: Text('Tomato-Medium',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 14,
                              left: 25),
                          child: Text('1 pc(500g - 700g)',
                            style: TextStyle(
                              color: Colors.green[500],
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                Container(
                    padding: EdgeInsets.only(
                        top: 18,
                        left: 25,
                    right: 20),
                    child: Text('The tomato is the edible, often red berry of the plant Solanum lycopersicum,commonly known as a tomato plant.',
                      style: TextStyle(
                        height: 1.3,
                          fontSize: 13,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: IconButton(
                                icon: Image.asset('assets/icons/plus.png'),
                                onPressed: (){},
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('01',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 17
                              ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: IconButton(
                                icon: Image.asset('assets/icons/minus.png'),
                                onPressed: (){},
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width /2.8),
                              child: Text('\$120',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                       ),
                        Flexible(
                          child: Row(
                            children:[ 
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(11.0),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.green[300],size: 25,
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 55,
                                  height: 55,
                                   decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2.0,
                                      color: Colors.green[300]
                                    ),
                                     borderRadius: BorderRadius.circular(15)
                                   ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 13),
                                        child: Text(
                                          'Bag it',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  width: 250,
                                  height: 55,
                                  decoration: BoxDecoration(
                                     color: Colors.green,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                              ),
                           ]
                          ),
                        ),
                    ],
                    ),
                  ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        width: 8,
        height: 5,
        margin: EdgeInsets.only(
          right: 8
        ),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicator = [];
    for(int i =0; i <foods.length; i++) {
      if (currentIndex == i) {
        indicator.add(_indicator(true));
      } else {
        indicator.add(_indicator(false));
      }
    }
    return indicator;
  }
}
