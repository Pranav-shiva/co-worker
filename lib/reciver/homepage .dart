import 'package:coworker/constant/constant.dart';
import 'package:coworker/reciver/top_navBar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: kBackground.copyWith(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0, right: 16, left: 16),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "GoodAfternoon, Pranav let's do the work together",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                hometile(),
                hometile(),
                hometile(),
                hometile(),
                hometile(),
                hometile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class hometile extends StatelessWidget {
  const hometile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    childCurrent: HomePage(),
                    type: PageTransitionType.bottomToTopJoined,
                    child: TopNavBar(),
                    isIos: false,
                    duration: Duration(milliseconds: 600),
                  ),
                );
              },
              child: Container(
                height: 140,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          child: Image.asset(
                            "assets/gym.png",
                            scale: 8,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Gym",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              height: 140,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: Image.asset(
                          "assets/runner.png",
                          scale: 8,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Gym",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
