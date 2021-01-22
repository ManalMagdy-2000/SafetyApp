import 'package:flutter/material.dart';
import './home.dart';
class CustomMessagePage extends StatefulWidget {
  @override
  _CustomMessagePageState createState () => new _CustomMessagePageState();

}

class _CustomMessagePageState extends State<CustomMessagePage> {
  int selectedRadio;
  @override
  void initState(){
    super.initState();
    selectedRadio=0;
  }
  setSelectedRadio(int val){
    setState(() {
      selectedRadio=val;
    });
  }
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
        padding: EdgeInsets.symmetric(horizontal: 20),
         width: double.infinity,
    child: Column(
    children: <Widget>[
      Container(
        child:Align(
          alignment:Alignment.topLeft
          ,
          child:RichText(text: TextSpan(
              text: 'Customize \n  Message ',
              style: TextStyle(color: Colors.grey[800],fontSize: 30,fontWeight:FontWeight.bold),
          ),

          ),),),
      Padding(
          padding: const EdgeInsets.only(bottom:50.0)
      ),
      RadioListTile(
        title:Text('Default Message') ,
        value: 1,
        groupValue: selectedRadio,
        activeColor: Colors.amber,
        onChanged: (newSelectedRadio){
          setState(() {
            selectedRadio=newSelectedRadio;
          });
        },
      ),
      const SizedBox(height: 30),
      RadioListTile(
        title: Text('Customize Message'),
        value: 2,
        groupValue: selectedRadio,
        activeColor: Colors.amber,
        onChanged: (newSelectedRadio){
          setState(() {
            selectedRadio=newSelectedRadio;
          });
        },
      ),


      MaterialButton(
        minWidth:280,
        height: 60,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Home()
          ));
        },
        color: Colors.amber,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text("Save", style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white

        ),),
      ),

      ],),
    )),

    );
  }
}