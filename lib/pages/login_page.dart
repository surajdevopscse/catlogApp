import 'package:catlogapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  var style = TextStyle(
    fontSize: 30,
    color: Colors.white,
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
              "Welcome $name",
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
                    onChanged: (value) => {
                      name = value,
                      setState(() {}),
                    },
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
                  InkWell(
                    onTap: () async => {
                      setState(() {
                        changeButton = true;
                      }),
                      await Future.delayed(
                        Duration(seconds: 1),
                      ),
                      Navigator.pushNamed(context, MyRoutes.homeRoute),
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              'Login',
                              style: style,
                            ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 0),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150, 40),
                  //   ),
                  //   onPressed: () => {
                  //     print("Login SuccessFull"),
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute),
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
