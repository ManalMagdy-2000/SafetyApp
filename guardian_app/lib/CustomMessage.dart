import 'dart:ui';

import 'package:flutter/material.dart';
import './home.dart';

class CustomMessagePage extends StatefulWidget {
  @override
  _CustomMessagePageState createState() => new _CustomMessagePageState();
}

class _CustomMessagePageState extends State<CustomMessagePage> {
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    text: 'Customize Emergency\n  Message ',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 30.0)),
            RadioListTile(
              title: Text(
                'Default Message',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
              value: 1,
              groupValue: selectedRadio,
              activeColor: Colors.amber,
              onChanged: (newSelectedRadio) {
                setState(() {
                  selectedRadio = newSelectedRadio;
                });
              },
            ),
            Padding(padding: const EdgeInsets.only(top: 10.0)),
            new Container(
              alignment: Alignment.centerLeft,
              height: 60.0,
              width: 320,
              decoration: new BoxDecoration(color: Colors.grey[200]),
              child: Text(
                "\t  Alex is in trouble",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            RadioListTile(
              title: Text('Customize Message',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[600])),
              value: 2,
              groupValue: selectedRadio,
              activeColor: Colors.amber,
              onChanged: (newSelectedRadio) {
                setState(() {
                  selectedRadio = newSelectedRadio;
                });
              },
            ),
            Container(
  child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
      maxLength: 100,
      minLines: 6,
      maxLines: 8,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'Enter Message ...',
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    ),
  ),
),
          /*  new Container(
              alignment: Alignment.center,
              height: 200.0,
              width: 320,
              decoration: new BoxDecoration(color: Colors.grey[200],
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 16, 
                maxLength: 100,
              ),
            )*/
            MaterialButton(
              minWidth: 280,
              height: 60,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              color: Colors.amber,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                "Save",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
