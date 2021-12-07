import 'package:flutter/material.dart';
import 'package:trade_thrust/core/presentation/tab_page_content.dart';
import 'package:trade_thrust/core/presentation/tabs_page.dart';

class DashBoardPage extends StatefulWidget {

  static const String routeName = '/dash-board';

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: TabBar(
            indicatorColor: Colors.grey.shade800,
            tabs: const [
              Tab(
                text: 'DAILY',
              ),
              Tab(
                text: 'WEEKLY',
              ),
              Tab(
                text: 'MONTHLY',
              ),
            ],
          ),
        ),
        const Expanded(
          child: TabBarView(
            children: [
              TabsPageContent(),
              TabsPageContent(),
              TabsPageContent(),
            ],
          ),
        ),

      ],
    );
  }
}
