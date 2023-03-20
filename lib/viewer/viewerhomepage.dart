import 'package:coworker/constant/constant.dart';
import 'package:coworker/viewer/viwertile.dart';
import 'package:flutter/material.dart';

class ViewHomePage extends StatefulWidget {
  const ViewHomePage({Key? key}) : super(key: key);

  @override
  State<ViewHomePage> createState() => _ViewHomePageState();
}

class _ViewHomePageState extends State<ViewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: kBackground.copyWith(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 12, left: 12),
            child: Column(
              children: [
                ViewerTile(),
                ViewerTile(),
                ViewerTile(),
                ViewerTile(),
                ViewerTile(),
                ViewerTile(),
                ViewerTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
