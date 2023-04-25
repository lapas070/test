import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
class successful_login extends StatelessWidget{
  final String email;
  const successful_login({hkey,  this.email});
  
  

 Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(title: const Text('')),
            body: Center(
              child: Column(children: [
                Text("hello $email your login is complete"),
                ElevatedButton(onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                 HomeScreen(
                                  )));
 },
 child: Text('home')
 )]
            ))));
  }

}

