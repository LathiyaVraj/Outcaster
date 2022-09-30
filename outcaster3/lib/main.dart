import 'package:flutter/material.dart';

void main() {
  runApp(outcaster3());
}

class outcaster3 extends StatefulWidget {
  const outcaster3({Key? key}) : super(key: key);

  @override
  State<outcaster3> createState() => _outcaster3State();
}

class _outcaster3State extends State<outcaster3> {
  int initialValue = 0;
  TextEditingController signupController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Stepper App"),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      onSurface: Colors.black),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                ),
                child: Stepper(
                  currentStep: initialValue,
                  onStepTapped: (val) {
                    setState(() {
                      initialValue = val;
                    });
                  },
                  onStepContinue: () {
                    if (initialValue < 3) {
                      setState(() {
                        ++initialValue;
                      });
                    }
                    if (initialValue == 3) {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/', (route) => false);
                    }
                  },
                  onStepCancel: () {
                    if (initialValue > 0) {
                      --initialValue;
                    }
                  },
                  steps: [
                    Step(
                      title: Text("Sign Up"),
                      content: Container(
                        child: Column(
                          children: [
                            TextField(
                              controller: signupController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Full Name"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: signupController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Email Id"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: signupController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Password"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: signupController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Confirm Password"),
                            ),
                          ],
                        ),
                      ),
                      isActive: (initialValue >= 0) ? true : false,
                    ),
                    Step(
                      title: Text("Login"),
                      content: Container(
                        child: Column(
                          children: [
                            TextField(
                              controller: loginController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "User Name"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: loginController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Password"),
                            ),
                          ],
                        ),
                      ),
                      isActive: (initialValue >= 0) ? true : false,
                    ),
                    Step(
                      title: Text("Home"),
                      content: Container(),
                      isActive: (initialValue >= 1) ? true : false,
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
