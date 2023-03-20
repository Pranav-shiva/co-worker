import 'package:coworker/pages/Emailloginpage.dart';
import 'package:coworker/pages/Emailsignuppage.dart';
import 'package:coworker/reciver/Aboutinformation%20.dart';
import 'package:coworker/reciver/homepage%20.dart';
import 'package:coworker/pages/phonepage.dart';
import 'package:coworker/pages/signuppage.dart';
import 'package:coworker/reciver/paymemtInput.dart';
import 'package:coworker/reciver/top_navBar.dart';
import 'package:coworker/viewer/reciverDetail.dart';
import 'package:coworker/viewer/viewerhomepage.dart';
import 'package:flutter/material.dart';

import 'buttons/datepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
