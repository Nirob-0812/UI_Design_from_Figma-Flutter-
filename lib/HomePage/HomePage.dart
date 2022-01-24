import 'package:flutter/material.dart';
import 'package:testme/LoginPage/Login.dart';
import 'package:testme/SignupPage/SignUp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routes="HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/haker.jpg"), fit: BoxFit.fill)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 300,
                  child: Text(
                    "Test Me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                height: 40,
                width: 170,
                child: Text(
                  "User Authentica",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, LoginPage.routes);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 240,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, SignUpPage.routes);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 240,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
