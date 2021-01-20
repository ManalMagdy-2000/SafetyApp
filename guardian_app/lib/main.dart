import 'package:flutter/material.dart';
import './SplashScreen.dart';
import './home.dart';
import './profile.dart';
import 'MaterialColor.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'), 
      home: MyHomePage());
       
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    Home(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       offset: Offset(10, 10)
          //     )
          //   ]
          // ),
          margin: EdgeInsets.only(bottom: 20),
          child: new TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                icon: Icon(Icons.person),
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
                ),
              ),
            ],
            unselectedLabelColor: createMaterialColor(Color(0xFFC4C4C4)),
            labelColor: createMaterialColor(Color(0xFF5ACFE4)),
            indicatorColor: Colors.transparent,
          ),
          
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 75,
          width: 75,
          child: new FloatingActionButton(
            backgroundColor:createMaterialColor(Color(0xFFF83E3E)),
            onPressed:(){ },
            child: Text("SOS",
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight:FontWeight.w900,color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}