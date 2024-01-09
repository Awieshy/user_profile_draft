import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Column(
          children: [
            Expanded(
              child: YourContentWidget(), // Your main content goes here
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset('assets/Vector.png', width: 50, height: 50),
                      Text('Home'), // Text below the Vector image
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/school.png', width: 50, height: 50),
                      Text('School'), // Text below the School image
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/info.png', width: 50, height: 50),
                      Text('Info'), // Text below the Info image
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/profile.png', width: 50, height: 50),
                      Text('Profile'), // Text below the Profile image
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Your content widget or body of the app
class YourContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.0), // Adjust padding as needed
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Merge provided code snippets here
              Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Name: Juan Dela Cruz",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Image.asset(
                        'assets/info.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Text("Student No.:2020-110299"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Text('Enrollment Status: '),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          "Not enrolled",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SchoolSection(),
              SizedBox(
                  height:
                      20), // Adding space between School Section and buttons
              // Buttons
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Change Password button action
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            primary: Colors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Icon(Icons.vpn_key),
                          label: Text(
                            'Change Password - Microsoft Account',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Log Out button action
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            primary: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Icon(Icons.exit_to_app),
                          label: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SchoolSection extends StatelessWidget {
  const SchoolSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            Image.asset(
              'assets/briefcase.png',
              width: 25,
              height: 25,
            ),
            SizedBox(width: 10),
            Text("(MIT) Master of Information Technology"),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Image.asset(
              'assets/college.png',
              width: 25,
              height: 25,
            ),
            SizedBox(width: 10),
            Text("College of Engineering and Technology - \n Graduate Program"),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Image.asset(
              'assets/calendar.png',
              width: 25,
              height: 25,
            ),
            SizedBox(width: 10),
            Text("School Year 2023 - 2024 1st  Trimester"),
          ],
        ),
      ],
    );
  }
}
