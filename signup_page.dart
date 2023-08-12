
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:mpya/entireapp_page.dart';
import 'package:mpya/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController= TextEditingController();
    var passwordController= TextEditingController();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor:Colors.white,
        body: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/pic11.jpg"),
                    fit: BoxFit.cover,
                  )
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
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Email",
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
              controller: passwordController,
                obscureText: true,
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
            SizedBox(height: 20),
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
                    child: RichText(text:TextSpan(
                      text:"Sign up",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>NoteListScreen())
                    ),
              ),
                  )
              ),
            SizedBox(height: 80),
            RichText(text: TextSpan(
                text: "Already! having an account?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              recognizer: TapGestureRecognizer()..onTap= ()=>Get.to(()=>loginPage())
            ))
          ],
        )
    );
  }
}
