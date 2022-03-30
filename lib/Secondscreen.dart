import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Tourism App',
      home: Scaffold(
        appBar: AppBar(title: Text('Second Screen'),
        ),
        body: Center(
          child: ElevatedButton(
              child: Text('Homescreen'),
              onPressed: (){
                Navigator.pop(context);
              }
              ),
        ),
      ),
    );
  }
}