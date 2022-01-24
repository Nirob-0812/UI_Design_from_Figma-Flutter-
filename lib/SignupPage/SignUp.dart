import 'package:flutter/material.dart';
import 'package:testme/HomePage/HomePage.dart';
import 'package:testme/LoginPage/Login.dart';

enum Gender { Male, Female }

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const routes = "SignUp";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Gender? _gender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: -15,
          title:
              Text("Back", style: TextStyle(fontSize: 16, color: Colors.blue)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue, size: 30),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("Sign Up",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w600))),
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/nirob.jpg"),
                  ),
                  Transform.translate(
                    offset: Offset(-5, 65),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 10,
                          shape: CircleBorder(),
                          primary: Colors.black),
                      onPressed: () {},
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "Name",
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: Icon(Icons.visibility),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLength: 11,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 15, right: 10),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, HomePage.routes);
                            },
                            child: Text("Verify",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue))),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter Mobile Number"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("Gender",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Male",
                            style: TextStyle(fontSize: 18),
                          ),
                          Radio(
                              value: Gender.Male,
                              groupValue: _gender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  _gender = value;
                                });
                              })
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Female",
                            style: TextStyle(fontSize: 18),
                          ),
                          Radio(
                              value: Gender.Female,
                              groupValue: _gender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  _gender = value;
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 360,
                    child: Text("Sign Up"),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text("Already have an account?"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.routes);
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
