import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:guardian_app/addContact.dart';

=======
>>>>>>> 6b83d09e3e888b9501f8ca72dd7f2f2ebcd4295c


class ContactUs extends StatefulWidget {

  @override 

  _ContactUsState createState () => new _ContactUsState();

}

class _ContactUsState extends State<ContactUs> {

  @override 

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Contact Us'),
      ),
<<<<<<< HEAD
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
=======

>>>>>>> 6b83d09e3e888b9501f8ca72dd7f2f2ebcd4295c
    );
  }
}