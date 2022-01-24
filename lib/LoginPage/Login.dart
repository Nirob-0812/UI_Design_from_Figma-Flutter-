import 'package:flutter/material.dart';
import 'package:testme/HomePage/HomePage.dart';
import 'package:testme/SignupPage/SignUp.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routes = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
        titleSpacing: -15,
        title: Text("Back",
            style: TextStyle(fontSize: 16, color: Colors.blue)),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login",
                    style:
                        TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("Enter your email address and",
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text("password to access your account",
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Email",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  height: 50,
                  width: 360,
                  child: Text("Log in"),
                ),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
              ),
              SizedBox(
                height: 170,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SignUpPage.routes);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
