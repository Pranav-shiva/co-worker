import 'package:coworker/constant/constant.dart';
import 'package:coworker/pages/phonepage.dart';
import 'package:coworker/pages/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../buttons/Googlephonemail.dart';
import 'Emailloginpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: kBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                height: 200,
                width: 200,
                child: Hero(
                  tag: "image",
                  child: Image.asset(
                    "assets/help.png",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Login",
              style: GoogleFonts.orbitron(
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            GPEButton(
              logo: "assets/google.png",
              text: "Continue with Google",
              ontap: () {},
            ),
            SizedBox(
              height: 25,
            ),
            GPEButton(
              logo: "assets/phone.png",
              text: "Continue with Google",
              ontap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    childCurrent: SignUpPage(),
                    type: PageTransitionType.bottomToTopJoined,
                    child: PhonePage(),
                    isIos: false,
                    duration: Duration(milliseconds: 600),
                  ),
                );
              },
            ),
            SizedBox(
              height: 25,
            ),
            GPEButton(
              logo: "assets/mail.png",
              text: "Continue with Google",
              ontap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    childCurrent: LoginPage(),
                    type: PageTransitionType.bottomToTopJoined,
                    child: EmailLoginPage(),
                    isIos: false,
                    duration: Duration(milliseconds: 600),
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your first time?",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        childCurrent: LoginPage(),
                        type: PageTransitionType.bottomToTopJoined,
                        child: SignUpPage(),
                        isIos: false,
                        duration: Duration(milliseconds: 600),
                      ),
                    );
                  },
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 19,
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
