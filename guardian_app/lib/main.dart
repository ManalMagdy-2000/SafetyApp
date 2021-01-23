import 'package:flutter/material.dart';
import './SplashScreen.dart';
import './home.dart';
import './profile.dart';
import 'MaterialColor.dart';
import './AboutUs.dart';
import './Feedback.dart';
import './ContactUs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [Home(), ProfilePage()];

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
          height: 70,
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       offset: Offset(10, 10)
          //     )
          //   ]
          // ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: new TabBar(
            tabs: [
              Tab(
                icon: SizedBox(
                    height: 20,
                    width: 40,
                    child: Icon(
                      Icons.home,
                      size: 35,
                    ),
                  ),
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              Tab(
                icon: SizedBox(
                  height: 20,
                    width: 40,
                  child: Icon(Icons.person, size: 35)),
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
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
            backgroundColor: createMaterialColor(Color(0xFFF83E3E)),
            onPressed: () {},
            child: Text(
              "SOS",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
