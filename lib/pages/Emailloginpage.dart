import 'package:coworker/constant/constant.dart';
import 'package:coworker/reciver/homepage%20.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'Emailsignuppage.dart';

class EmailLoginPage extends StatefulWidget {
  @override
  _EmailLoginPageState createState() => _EmailLoginPageState();
}

class _EmailLoginPageState extends State<EmailLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "assets/help.png",
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: GoogleFonts.orbitron(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: TextField(
                decoration: kTextUsernameDecoration,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: TextField(
                  obscureText: true, decoration: kTextpasswordDecoration),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      childCurrent: EmailSignUpPage(),
                      type: PageTransitionType.bottomToTopJoined,
                      child: HomePage(),
                      isIos: false,
                      duration: Duration(milliseconds: 600),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
