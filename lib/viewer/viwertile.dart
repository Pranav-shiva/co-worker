import 'package:coworker/viewer/reciverDetail.dart';
import 'package:coworker/viewer/viewerhomepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ViewerTile extends StatelessWidget {
  const ViewerTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            childCurrent: ViewHomePage(),
            type: PageTransitionType.bottomToTopJoined,
            child: ReciverDetail(),
            isIos: false,
            duration: Duration(milliseconds: 600),
          ),
        );
      },
      child: Card(
        elevation: 3,
        color: Colors.white.withOpacity(0.3),
        child: Row(
          children: [
            Hero(
              tag: "image",
              child: Image.asset(
                "assets/profile.png",
                scale: 5,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Gym",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "I intrested to have ",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "₹2000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
