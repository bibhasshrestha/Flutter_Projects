import 'package:flutter/material.dart';
import 'package:myapp/view/bottom_nav_page.dart';
import 'package:myapp/view/login/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
              'Create your account',
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
            height: 16,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: 'Confirm Password',
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
                return LoginPage();
              }));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Sign In",
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
