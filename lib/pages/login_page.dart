import 'package:catlogapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  var style = TextStyle(
    color: Colors.red,
    fontSize: 30,
  );
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: style,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: 'User Name',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    child: Text('Login'),
                    style: TextButton.styleFrom(
                      minimumSize: Size(150, 40),
                    ),
                    onPressed: () => {
                      print("Login SuccessFull"),
                      Navigator.pushNamed(context, MyRoutes.homeRoute),
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
