import 'package:flutter/material.dart';

void main() {
  runApp(outcaster4());
}

class outcaster4 extends StatefulWidget {
  const outcaster4({Key? key}) : super(key: key);

  @override
  State<outcaster4> createState() => _outcaster4State();
}

class _outcaster4State extends State<outcaster4> {
  int initialValue = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController nationalitiesController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController langController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: 800,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlueAccent, Colors.greenAccent],
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Edit Your Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 650,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stepper(
                        currentStep: initialValue,
                        onStepTapped: (val) {
                          setState(() {
                            initialValue = val;
                          });
                        },
                        onStepContinue: () {
                          if (initialValue < 11) {
                            setState(() {
                              ++initialValue;
                            });
                          }
                          if (initialValue == 11) {
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
                            title: Text("Name"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Full Name"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Phone"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.phone,
                                    controller: phoneController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Mobile Number"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Email"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Email id"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("DOB"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    keyboardType: TextInputType.datetime,
                                    controller: dobController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Date of birth"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Gender"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: genderController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Male / Female"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Current location"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: locationController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Location"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Nationalities"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: nationalitiesController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Indian"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Religion"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: religionController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Hindu"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Language"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: langController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Hindi"),
                                  ),
                                ],
                              ),
                            ),
                            isActive: (initialValue >= 0) ? true : false,
                          ),
                          Step(
                            title: Text("Biography"),
                            content: Container(
                              child: Column(
                                children: [
                                  TextField(
                                    controller: bioController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Bio.."),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
