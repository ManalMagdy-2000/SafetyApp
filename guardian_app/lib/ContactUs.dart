import 'package:flutter/material.dart';
import 'package:guardian_app/addContact.dart';


class ContactUsPage extends StatefulWidget {

  @override 

  _ContactUsPageState createState () => new _ContactUsPageState();

}

class _ContactUsPageState extends State<ContactUsPage> {

  @override 

  Widget build(BuildContext context){
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
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
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

                child:Align(
                  alignment:Alignment.topLeft
                  ,
                  child:RichText(text: TextSpan(
                      text: 'Contact \nDetails ',
                      style: TextStyle(color: Colors.grey[800],fontSize: 30,fontWeight:FontWeight.bold),
                      children: [
                        TextSpan(text: '\t \t \t \t \t \t \t \t  2/3',style: TextStyle(color: Colors.grey[800],fontSize: 30,fontWeight: FontWeight.bold,))
                      ]
                  ),

                  ),),),
              Padding(
                  padding: const EdgeInsets.only(bottom:60.0)
              ),

              Column(
                children: <Widget>[
                  makeInput(label: "Email"),
                  makeInput(label: "Password", obscureText: true),
                  makeInput(label: "Phone Number"),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 60.0),
                child:MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AddContactPage()
                    ));
                  },
                  color: Colors.black87,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Next", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,

                  ),),
                ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,

              ),
            ],
          ),
        ),

      ),
    );
  }
  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            ),
          ),
        ),
        SizedBox(height: 30,),

      ],

    );
  }
  }
