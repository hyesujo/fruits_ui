import 'package:flutter/material.dart';
import 'package:food_ui/widget/staggeredCard.dart';



class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {



  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StaggeredCard();
  }
}




// StaggeredGridView.countBuilder(
// crossAxisCount: 2,
// itemBuilder: null,
// staggeredTileBuilder: null),

// StaggeredGridView.countBuilder(
// crossAxisCount: 2,
// itemBuilder:  (context,index) {
// return ImageCard();
// }
// ),

// DefaultTabController(
// length: 4,
// child: Scaffold(
// key: scaffoldKey,
// extendBodyBehindAppBar: false,
// appBar: PreferredSize(
// preferredSize: Size.fromHeight(200.0),
// child: SingleChildScrollView(
// child: Column(
// children:[
// AppBar(
// backgroundColor: Colors.transparent,
// elevation: 0.0,
// leading: Padding(
// padding: const EdgeInsets.only(left :8.0),
// child: Transform.scale(
// scale: 0.9,
// child: IconButton(
// icon: Image.asset('assets/icons/menu1.png'),
// onPressed: () => scaffoldKey.currentState.openDrawer(),
// ),
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
// )
// ],
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// width: 300,
// height: 40,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(20),
// border: Border.all(
// color: ksecondColor.withOpacity(0.32),
// )
// ),
// child:TextField(
// onChanged: (value) {
// },
// decoration: InputDecoration(
// border: InputBorder.none,
// icon: Padding(
// padding: const EdgeInsets.only(
// left: 20
// ),
// child: Icon(Icons.search,
// color: Colors.grey[800],
// ),
// ),
// hintText: 'Search Here',
// hintStyle: TextStyle(
// color: Colors.grey
// ),
// ),
// ),
// ),
// ]
// ),
// ],
// ),
// ),
// ),
// drawer: Drawer(),
// body: