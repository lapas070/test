import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class successful_register extends StatelessWidget{
  final String Fnames;
  final String Lname;
  const successful_register({hkey,  this.Fnames, this.Lname});
  
  

 Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(title: const Text('')),
            body: Center(
              child: Column(children: [
                Text("hello $Fnames,$Lname your registered is complete"),
                ElevatedButton(onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                 HomeScreen(
                                  )));
 },
 child: Text('home')
 )]))
        ));}
}