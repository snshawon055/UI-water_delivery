import 'package:flutter/material.dart';
import 'package:water_delevary/screen/sign_screen.dart';
import 'package:water_delevary/widges/space.dart';

import '../extar_colors/extar_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();
  void validete() {
    if (fromKey.currentState!.validate()) {
      "Please enter characters";
    }
    return null;
  }

  bool isHiddenPass = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/login_screen.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 20,
                    child: Text(
                      "Well Come\nBack",
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Form(
                    key: fromKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: TextFormField(
                            controller: email_controller,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter email";
                              } else if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
                                  .hasMatch(value)) {
                                return "Please enter valide email";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "Email Address ",
                              labelStyle: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w600,
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 15,
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none)),
                            ),
                          ),
                        ),
                        addVirtecalSpace(15),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: isHiddenPass,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter password";
                              } else if (value.length < 8) {
                                return "Don't use under 8 character ";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isHiddenPass = !isHiddenPass;
                                  });
                                },
                                child: isHiddenPass
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              ),
                              labelText: "Password ",
                              labelStyle: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w600,
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 15,
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(style: BorderStyle.none)),
                            ),
                          ),
                        ),
                        addVirtecalSpace(8),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Container(
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        addVirtecalSpace(20),
                        GestureDetector(
                          onTap: validete,
                          child: Container(
                            width: size.width - 30,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        addVirtecalSpace(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 2,
                              width: 120,
                              color: Colors.grey,
                            ),
                            addHirzontalSpace(10),
                            Text(
                              "or",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            addHirzontalSpace(10),
                            Container(
                              height: 2,
                              width: 120,
                              color: Colors.grey,
                            ),
                          ],
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
                            width: size.width - 30,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                ),
                                top: BorderSide(
                                  color: Colors.grey,
                                ),
                                left: BorderSide(
                                  color: Colors.grey,
                                ),
                                right: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                addVirtecalSpace(20)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
