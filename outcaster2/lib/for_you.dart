import 'package:flutter/material.dart';

import 'global.dart';

class forYouComponent extends StatefulWidget {
  const forYouComponent({Key? key}) : super(key: key);

  @override
  State<forYouComponent> createState() => _forYouComponentState();
}

class _forYouComponentState extends State<forYouComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            // SizedBox(
            //   height: 100,
            // ),
            Row(
              children: [
                Text(
                  "Popular games",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  size: 27,
                  color: Colors.white.withOpacity(0.5),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Global.GameListForyou.map(
                  (e) => Row(
                    children: [
                      Image.asset(e['image']),
                    ],
                  ),
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
