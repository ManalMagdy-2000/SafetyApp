import 'dart:math';
import 'package:intl/intl.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './SignUpContactDetails.dart';
import 'Animation/FadeAnimation.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _selectedDate = 'Tap to select date';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime d = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2025),
    );
    if (d != null)
      setState(() {
        _selectedDate = new DateFormat.yMMMMd("en_US").format(d);
      });
  }

  @override
  DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.cyan[50],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey[800]),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'New \nAccount ',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: '\t \t \t \t \t \t \t  1/3',
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ))
                          ]),
                    ),
                  ),
                ),

// google Button

                (Padding(padding: EdgeInsets.only(top: 30.0))),
                SignInButton(Buttons.Google,
                    onPressed: () {}, text: "Sign up with Google"),
                Padding(padding: EdgeInsets.only(top: 30.0)),
                new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Divider(thickness: 2.0, color: Colors.grey[500]),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Column(
                      children: <Widget>[
                        makeInput(label: "First Name"),
                        makeInput(label: "Last Name"),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.grey),
                            left: BorderSide(width: 1.0, color: Colors.grey),
                            right: BorderSide(width: 1.0, color: Colors.grey),
                            bottom: BorderSide(width: 1.0, color: Colors.grey),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InkWell(
                              child: Text(_selectedDate,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xFF000000))),
                              onTap: () {
                                _selectDate(context);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.calendar_today),
                              tooltip: 'nothing has picked',
                              onPressed: () {
                                _selectDate(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 20.0)),
                    Container(
                      padding: EdgeInsets.only(top: 2, left: 3),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SignUpContactDetails()));
                        },
                        color: Colors.black87,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                )
              ],
            ),
          ]),
        )));
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
