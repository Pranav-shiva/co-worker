import 'package:flutter/material.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:intl/intl.dart';

const kTextUsernameDecoration = InputDecoration(
  labelText: 'Email',
  labelStyle: TextStyle(
    color: Colors.white,
  ),
  prefixIcon: Icon(
    Icons.person,
    color: Colors.white,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black26, width: 3),
  ),
);
const kTextpasswordDecoration = InputDecoration(
  labelText: 'Password',
  labelStyle: TextStyle(
    color: Colors.white,
  ),
  prefixIcon: Icon(
    Icons.lock,
    color: Colors.white,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black26, width: 3),
  ),
);
const kBackground = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xff07434D),
      Color(0xff18666A),
    ],
  ),
);

const kOtpDecoration = InputDecoration(
  labelText: 'OTP',
  labelStyle: TextStyle(
    color: Colors.white,
  ),
  prefixIcon: Icon(
    Icons.messenger_outline_outlined,
    color: Colors.white,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black26, width: 3),
  ),
);
