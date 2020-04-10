import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child:RaisedButton(
          child: Text("Back to first Screen"),
          onPressed: (){
            Navigator.of(context).pop();
          })
      ),
      
    );
  }
}