import 'package:flutter/material.dart';
import 'package:water_delevary/screen/login_screen.dart';
import 'package:water_delevary/screen/sign_screen.dart';
import 'package:water_delevary/widges/colors_page.dart';
import 'package:water_delevary/widges/space.dart';

import '../extar_colors/extar_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "WWater",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Water Delivery",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "We deliver water at any point of the Earth\n in 30 minutes",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  addVirtecalSpace(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: size.width - 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 51, 78, 253),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  addVirtecalSpace(15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: size.width - 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                          ),
                          top: BorderSide(
                            color: Colors.white,
                          ),
                          left: BorderSide(
                            color: Colors.white,
                          ),
                          right: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white70,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  addVirtecalSpace(20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
