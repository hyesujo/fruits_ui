import 'package:flutter/material.dart';
import 'package:food_ui/constant.dart';

class CustomAppbar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppbar(
      this.scaffoldKey,
      );


  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SafeArea(
        child: Column(
          children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.scale(
                scale: 0.8,
                child: IconButton(
                  icon: Image.asset('assets/icons/menu1.png'),
                  onPressed: () => widget.scaffoldKey.currentState.openDrawer(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Transform.scale(
                scale: 0.8,
                child: IconButton(
                  icon: Image.asset('assets/icons/sopping.png'),
                  onPressed: (){},
                ),
              ),
            ),
          ]
        ),

            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: ksecondColor.withOpacity(0.32),
              )
              ),
          child: TextField(
              onChanged: (value) {
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Padding(
                  padding: const EdgeInsets.only(
                      left: 20
                  ),
                  child: Icon(Icons.search,
                    color: Colors.grey[800],
                  ),
                ),
                hintText: 'Search Here',
                hintStyle: TextStyle(
                    color: Colors.grey
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
