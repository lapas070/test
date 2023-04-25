import 'package:flutter/material.dart';
import 'successful register.dart';
import 'package:shop_app/screens/home/home_screen.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _Fname ="";
  String _Lname ="";
  String _email = "";
  String _password = "";
TextEditingController FnamereController = TextEditingController();
TextEditingController LnamereController = TextEditingController();

  void _register() {
    print("firstname: $_Fname,lastname: $_Lname,Email: $_email, Password: $_password");
    // Add logic for registering user here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: FnamereController,
              onChanged: (value) {
                setState(() {
                  _Fname = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Firstname',
              ),
            ),
            TextField(
              controller: LnamereController,
              onChanged: (value) {
                setState(() {
                  _Lname = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Lname',
              ),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                 successful_register(
                                  Fnames:FnamereController.text,
                                  Lname:LnamereController.text ,
                                  )));
                                      
                                    },
                                    child: Text('register')),
             ElevatedButton(onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                 HomeScreen(
                                  )));
                                      
                                    },
                                    child: Text('return to the home screen'))
          ],
        ),
      ),
    );
  }
}
