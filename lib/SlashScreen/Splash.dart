import 'package:flutter/material.dart';
import 'package:testme/HomePage/HomePage.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);
  static const routes="Splash";

  @override
  _SplshScreenState createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();
    navigateHomePage();
  }

  navigateHomePage() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/hacker2.jpg"), fit: BoxFit.fill)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
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
            ],
          ),
        ),
      ),
    );
  }
}
