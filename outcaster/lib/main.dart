import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    outcaster1(),
  );
}

class outcaster1 extends StatefulWidget {
  const outcaster1({Key? key}) : super(key: key);

  @override
  State<outcaster1> createState() => _outcaster1State();
}

class _outcaster1State extends State<outcaster1> {
  bool isIos = false;
  TextStyle titlestyle =
      TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
  TextStyle titlestyle2 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  TextStyle iostitlestyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return (isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text("Settings UI"),
                backgroundColor: Colors.redAccent,
                actions: [
                  Switch(
                    value: isIos,
                    onChanged: (val) {
                      setState(() {
                        isIos = val;
                      });
                    },
                  ),
                ],
              ),
              backgroundColor: Colors.white,
              body: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Common",
                      style: titlestyle,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(Icons.language),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Language",
                              style: titlestyle2,
                            ),
                            Text(
                              "English",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(Icons.cloud_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Environment",
                              style: titlestyle2,
                            ),
                            Text(
                              "Production",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Account",
                      style: titlestyle,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Phone number",
                          style: titlestyle2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Email",
                          style: titlestyle2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_circle_left_sharp),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Sign out",
                          style: titlestyle2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Security",
                      style: titlestyle,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Lock app in background",
                          style: titlestyle2,
                        ),
                        Spacer(),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Colors.redAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.fingerprint),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Use fingerprint",
                          style: titlestyle2,
                        ),
                        Spacer(),
                        Switch(
                          value: false,
                          onChanged: (val) {},
                          activeColor: Colors.redAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.password),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Change password",
                          style: titlestyle2,
                        ),
                        Spacer(),
                        Switch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              backgroundColor: Colors.white70.withOpacity(0.9),
              navigationBar: CupertinoNavigationBar(
                middle: Text(
                  "Settings UI",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: CupertinoSwitch(
                    value: isIos,
                    onChanged: (val) {
                      setState(() {
                        isIos = val;
                      });
                    }),
                backgroundColor: Colors.red,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Common",
                        style: iostitlestyle,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.language,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Language",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                Text(
                                  "English",
                                  style: iostitlestyle,
                                ),
                              ],
                            ),
                          ),
                          Divider(indent: 42, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.cloud_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Environment",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                Text(
                                  "Production",
                                  style: iostitlestyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Account",
                        style: iostitlestyle,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 160,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Phone number",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          Divider(indent: 42, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          Divider(indent: 42, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_left,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Sign out",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Security",
                        style: iostitlestyle,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Lock app in background",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  activeColor: Colors.red,
                                  value: true,
                                  onChanged: (val) {},
                                ),
                              ],
                            ),
                          ),
                          Divider(indent: 42, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.fingerprint,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Use fingerprint",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  activeColor: Colors.red,
                                  value: false,
                                  onChanged: (val) {},
                                ),
                              ],
                            ),
                          ),
                          Divider(indent: 42, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.password,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Change password",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  activeColor: Colors.red,
                                  value: true,
                                  onChanged: (val) {},
                                ),
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
