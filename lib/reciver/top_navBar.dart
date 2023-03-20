import 'package:coworker/reciver/paymemtInput.dart';
import 'package:flutter/material.dart';

import 'Aboutinformation .dart';

class TopNavBar extends StatefulWidget {
  const TopNavBar({super.key});

  @override
  State<TopNavBar> createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: TabBar(
          indicatorWeight: 3,
          indicatorPadding: const EdgeInsets.all(10),
          indicatorColor: Colors.black26.withOpacity(.4),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.account_box_outlined,
                color: Color(0xff07434D),
                size: 30,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.currency_bitcoin,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          AboutReciverInformation(),
          PaymentInputPage(),
        ],
      ),
    );
  }
}
