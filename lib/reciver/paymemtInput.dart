import 'package:coworker/constant/constant.dart';
import 'package:coworker/reciver/top_navBar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../viewer/viewerhomepage.dart';

class PaymentInputPage extends StatefulWidget {
  const PaymentInputPage({Key? key}) : super(key: key);

  @override
  State<PaymentInputPage> createState() => _PaymentInputPageState();
}

class _PaymentInputPageState extends State<PaymentInputPage> {
  bool checkedValue = false;
  bool textFieldState = true;
  TextEditingController? _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBackground.copyWith(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Set a budget for your task ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    controller: _controller,
                    enabled: textFieldState,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                    autofocus: true,
                    maxLines: null,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "₹",
                      hintStyle: TextStyle(fontSize: 60, color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: <Widget>[
                CheckboxListTile(
                  selectedTileColor: Color(0xff07434D),

                  title: Text(
                    "I dont want Money want",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      _controller?.clear();
                      textFieldState = !newValue!;
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    childCurrent: TopNavBar(),
                    type: PageTransitionType.bottomToTopJoined,
                    child: ViewHomePage(),
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
                        'Post',
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
          ],
        ),
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.all(12.0),
// child: Container(
// decoration: BoxDecoration(color: Colors.black26),
// child: Text("Complete Price"),
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(12.0),
// child: Container(
// child: Text("Price per hour"),
// ),
// ),
