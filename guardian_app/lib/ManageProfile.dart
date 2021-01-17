import 'package:flutter/material.dart';


class ManageProfile extends StatefulWidget {

  @override 

  _ManageProfileState createState () => new _ManageProfileState();

}

class _ManageProfileState extends State<ManageProfile> {

  @override 

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Manage Profile'),
      ),

    );
  }
}