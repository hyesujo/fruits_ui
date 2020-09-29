import 'package:flutter/material.dart';
import 'package:food_ui/screen/Nuts&seed.dart';
import 'package:food_ui/screen/daily.dart';
import 'package:food_ui/screen/foodScreen.dart';
import 'package:food_ui/screen/vegetables.dart';
import 'package:food_ui/widget/customAppbar.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          key: scaffoldKey,
          extendBodyBehindAppBar: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180),
            child: Column(
              children:[
              CustomAppbar(scaffoldKey),
              Flexible(
                child: Container(
                  height: 80,
                  child: AppBar(
                    elevation: 0.0,
                    backgroundColor: Colors.transparent,
                    bottom: TabBar(
                      isScrollable: false,
                      labelPadding: EdgeInsets.zero,
                      labelStyle: TextStyle(
                        fontSize: 15
                      ),
                      unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
          Tab(text: 'Fruits'),
          Tab(text: 'Vegetables'),
          Tab(text: ' Nuts'),
          Tab(text: 'Daily'),
          ],
          ),
                  ),
                ),
              ),
            ],
            ),
        ),
          drawer: Drawer(),
        body: TabBarView(
          children: [
            FoodScreen(),
            Vegetables(),
            NustsSeeds(),
            Daily(),
          ],
        )
      ),
    );
  }
}


// PreferredSize(
// preferredSize: Size.fromHeight(170),
// child: Column(
// children:[
// Expanded(
// child: AppBar(
// backgroundColor: Colors.transparent,
// elevation: 0.0,
// leading: Padding(
// padding: const EdgeInsets.only(left :8.0),
// child: Column(
// children:[
// Expanded(
// child: Transform.scale(
// scale: 0.9,
// child: IconButton(
// icon: Image.asset('assets/icons/menu1.png'),
// onPressed: () => scaffoldKey.currentState.openDrawer(),
// ),
// ),
// ),
// ]
// ),
// ),
// actions: [
// Padding(
// padding: const EdgeInsets.only(right: 10),
// child: Transform.scale(
// scale: 0.8,
// child: IconButton(
// icon: Image.asset('assets/icons/sopping.png'),
// onPressed: (){},
// ),
// ),
// ),
// ],
// bottom:
// ),
// ),
// ]
// ),
// ),
// 
