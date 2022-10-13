import 'package:flutter/material.dart';

class chatsComponent extends StatefulWidget {
  const chatsComponent({Key? key}) : super(key: key);

  @override
  State<chatsComponent> createState() => _chatsComponentState();
}

class _chatsComponentState extends State<chatsComponent> {
  static List<Map<String, dynamic>> chatList = [
    {'pcolor': Colors.greenAccent, 'name': 'Abc', 'time': '3:45 PM', 'a': 'A'},
    {
      'pcolor': Colors.lightBlueAccent,
      'name': 'Def',
      'time': '2:50 PM',
      'a': 'D'
    },
    {'pcolor': Colors.redAccent, 'name': 'Ghi', 'time': '1:45 PM', 'a': 'G'},
    {'pcolor': Colors.yellowAccent, 'name': 'Jkl', 'time': '1:30 PM', 'a': 'J'},
    {
      'pcolor': Colors.lightGreenAccent,
      'name': 'Mno',
      'time': '1:25 PM',
      'a': 'M'
    },
    {
      'pcolor': Colors.indigoAccent,
      'name': 'Pqr',
      'time': '12:45 PM',
      'a': 'P'
    },
    {'pcolor': Colors.limeAccent, 'name': 'Stu', 'time': '12:30 PM', 'a': 'S'},
    {
      'pcolor': Colors.orangeAccent,
      'name': 'Vwx',
      'time': '12:00 PM',
      'a': 'V'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black.withOpacity(0.9),
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: chatList
                .map(
                  (e) => Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: e['pcolor'], shape: BoxShape.circle),
                            child: Text(
                              e['a'],
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1, 1),
                                      blurRadius: 3.0,
                                      color: Colors.grey,
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            e['name'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            e['time'],
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
