import 'package:flutter/material.dart';
import 'package:guardian_app/widgets/customAlertDialog.dart';
import 'package:contact_picker/contact_picker.dart';

class AddContactPage extends StatefulWidget {
  @override
  _AddContactPageState createState() => new _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final ContactPicker _contactPicker = new ContactPicker();
  Contact _contact;
  @override
  Widget build(BuildContext context) {
    void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomAlertDialog(
                content: Container(
                  width: MediaQuery.of(context).size.width / 3.2,
                  height: MediaQuery.of(context).size.height / 6.5,
                  color: Colors.white,
                  child: Center(
                      child: Text(
                    'Account Successfully Created! \n \nConfirm your registration throught the link sent to  your email ',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15,
                    ),
                  )),
                ),
                actions: <Widget>[
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: MaterialButton(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.amber),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ))
                ]);
          });
    }

    return new Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.cyan[50],
      appBar: new AppBar(
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
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Add SOS \nContacts ',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: ' \t \t \t \t \t \t  3/3',
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ))
                          ]),
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 60.0)),
                Center(
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new MaterialButton(
                        color: Colors.white,
                        padding: const EdgeInsets.only(
                            bottom: 40.0, top: 20.0, right: 80.0, left: 80.0),
                        child: new Icon(
                          Icons.add_circle,
                          color: Colors.amber,
                          size: 60,
                        ),
                        onPressed: () async {
                          Contact contact =
                              await _contactPicker.selectContact();
                          setState(() {
                            _contact = contact;
                          });
                        },
                      ),
                      Padding(padding: const EdgeInsets.only(top: 30.0)),
                      new Text(
                        _contact == null
                            ? 'No contact selected.'
                            : _contact.toString(),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 150.0)),
                      new Text(
                          "By continuing, you agree to accept our \n Privacy Policy & Terms of Service.",
                          style: TextStyle(color: Colors.grey, fontSize: 10)),
                      Padding(padding: const EdgeInsets.only(top: 20.0)),
                      new MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        color: Colors.amber,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
