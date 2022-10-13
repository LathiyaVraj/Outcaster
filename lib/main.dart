import 'package:flutter/material.dart';
import 'package:outcaster5/calls.dart';
import 'package:outcaster5/chats.dart';
import 'package:outcaster5/status.dart';

void main() {
  runApp(outcaster5());
}

class outcaster5 extends StatefulWidget {
  const outcaster5({Key? key}) : super(key: key);

  @override
  State<outcaster5> createState() => _outcaster5State();
}

class _outcaster5State extends State<outcaster5> with TickerProviderStateMixin {
  late TabController tabController;
  PageController pageController = PageController();
  int initialTabIndex = 0;

  List<Widget> pages = [
    chatsComponent(),
    statusComponent(),
    callsComponent(),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.greenAccent,
          child: Icon(Icons.message_rounded),
        ),
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.greenAccent,
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
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: PageView.builder(
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
    );
  }
}
