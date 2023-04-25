import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/screens/details/components/successful_login.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _password = "";
  TextEditingController emailController = TextEditingController();
  void _login() async {
    final response = await http.post(
      Uri.parse('http://localhost:3000/login'),
      body: {
        'email': _email,
        'password': _password,
      },
    );

    if (response.statusCode == 200) {
      // Login successful
      print('Login successful');
    } else if (response.statusCode == 401) {
      // Invalid email or password
      print('Invalid email or password');
    } else {
      // Server error
      print('Server error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: emailController,
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
                                 successful_login(
                                  email:emailController.text
                                  )));
                                      
                                    },
                                    child: Text('Login')),
            ElevatedButton(onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                 HomeScreen(
                                  )));
                                      
                                    },
                                    child: Text('return to the home screen'))
                              ]),
                      ));
  }}

  