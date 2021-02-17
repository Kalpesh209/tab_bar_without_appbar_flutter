import 'package:flutter/material.dart';
import 'package:tabbar_without_appbarflutter/common/color_constants.dart';


/*
Title:TabBarWidget
Purpose:TabBarWidget
Created By:Kalpesh Khandla
Created Date:17 Feb 2021
*/

class TabBarWidget extends StatefulWidget {
  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {

    // Specifies number of Tabs here
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15,),
          child: Column(
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    color: ColorConstants.kBlueColor,
                  ),
                  labelColor: ColorConstants.kWhiteColor,
                  unselectedLabelColor: ColorConstants.kBlackColor,
                  tabs: [
                    Tab(
                      text: 'Yesterday',
                    ),
                    Tab(
                      text: 'Today',
                    ),
                      Tab(
                      text: 'Tomorrow',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Column(
                       children: [
                         Text("Tab1"),
                       ],
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Text("Tab2"),
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10),
                       child: Column(
                         children: [
                           Text("Tab3"),
                         ],
                       ),
                     ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
