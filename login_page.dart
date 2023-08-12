import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpya/entireapp_page.dart';
import 'package:mpya/signup_page.dart';
import 'package:flutter/gestures.dart';


class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double h= MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
              Container(
                  width: w,
                  height: h*0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "img/pic11.jpg"
                        ),
                        fit: BoxFit.cover,
                      )
                  )
              ),
              Container(
                  child: Column(
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            color: Colors.blue,
                              fontSize: 70,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Log in into your account",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                          ),
                        ),
                        SizedBox(height: 50),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1,1),
                                    color: Colors.grey.withOpacity(0.2)
                                )
                              ]
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Username",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                        width: 1.0
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                        width: 1.0
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(80)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1,1),
                                    color: Colors.grey.withOpacity(0.2)
                                )
                              ]
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                        width: 1.0
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent,
                                        width: 1.0
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(80)
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                            children: [
                              Expanded(child: Container()),
                              Text(
                                "Forget your password?",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                ),
                              )
                            ]
                        )
                      ]
                  )
              ),
              SizedBox(height: 10),
              Container(
                  width: w*0.5,
                  height: h*0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(
                            "img/pic12.jpg"
                        ),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: RichText(text: TextSpan(
                        text: "Log in",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>NoteListScreen())
                    ),
              ),
                  ),
              ),
              SizedBox(height: 70),
              RichText(text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                        text: " Create",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                     recognizer:  TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
                    )
                  ]
              ),

              )
            ]
        )
    );
  }
}
