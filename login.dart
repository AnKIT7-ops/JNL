import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: LoginScreen()));
}
class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  void _login() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Clicked!")));
  }
  void _forgotPassword() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password reset link sent!")));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Username"),),
          TextField(
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          ElevatedButton(onPressed: _forgotPassword, child: Text("Forgot Password?")),
          ElevatedButton(onPressed: _login, child: Text("Login")),
        ],
      ),
    );
  }
}