import 'package:flutter/material.dart';
import 'package:myapp/view/bottom_nav_page.dart';

import '../signup/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          SizedBox(
            height: 30,
          ),
          AspectRatio(
              aspectRatio: 12 / 8,
              child: Image.asset(
                'assets/sevalogo.jpg',
              )),
          Center(
            child: Text(
              'Login to your account',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: 'Email',
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Password',
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 20,
                      child: Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {

                            isChecked = !isChecked;
                            print(isChecked);
                            });
                          })),
                  SizedBox(
                    width: 6,
                  ),
                  Text('Remember Me'),
                ],
              ),
              Text('Forget Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.blue,
                  )),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BottomNavPage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            color: Colors.blue,
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpPage();
              }));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
