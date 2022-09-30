import 'package:flutter/material.dart';
import 'package:outcaster2/for_you.dart';
import 'package:outcaster2/kids.dart';
import 'package:outcaster2/premium.dart';
import 'package:outcaster2/top_charts.dart';

void main() {
  runApp(const outcaster2());
}

class outcaster2 extends StatefulWidget {
  const outcaster2({Key? key}) : super(key: key);

  @override
  State<outcaster2> createState() => _outcaster2State();
}

class _outcaster2State extends State<outcaster2> with TickerProviderStateMixin {
  late TabController tabController;

  PageController pageController = PageController();
  int initialTabIndex = 0;

  List<Widget> pages = [
    forYouComponent(),
    topChartsComponent(),
    kidsComponent(),
    premiumComponent(),
  ];

  void initState() {
    super.initState();
    tabController = TabController(length: pages.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        initialTabIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.14),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: 27,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Spacer(),
                    Text(
                      "Search for apps &...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.mic_none_outlined,
                      size: 27,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: tabController,
                indicatorColor: Colors.green,
                indicatorWeight: 5,
                onTap: (val) {
                  setState(() {
                    pageController.animateToPage(val,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  });
                },
                tabs: <Tab>[
                  Tab(
                    text: "For You",
                  ),
                  Tab(
                    text: "Top charts",
                  ),
                  Tab(
                    text: "Kids",
                  ),
                  Tab(
                    text: "Premium",
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 400,
                child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (val) {
                      setState(() {
                        tabController.animateTo(val);
                      });
                    },
                    itemCount: pages.length,
                    itemBuilder: (context, i) {
                      return pages[i];
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
