import 'package:flutter/material.dart';
import 'package:trainer_trained/PredModel.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/bmi.dart';
import 'package:trainer_trained/screens/home.dart';
import 'package:trainer_trained/screens/trainers.dart';

import '../reuseable/text_constraint.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.white, // Set app bar background color
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerHeader(
          child: ListView(
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(top: 20.0),
              //   child: ListTile(
              //     title: PText(
              //       "Register",
              //       color: Colors.black,
              //       fontSize: 24,
              //     ),
              //     subtitle: PText(
              //       'Connect With Us',
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     leading: Icon(
              //       Icons.login_rounded,
              //       color: Colors.black,
              //       size: 50,
              //     ),
              //     // onTap: () {
              //     //   Navigator.of(context).push(MaterialPageRoute(
              //     //     builder: (context) => LoginPage(),
              //     //   ));
              //     // },
              //   ),
              // ),
              ListTile(
                title: PText(
                  "Exercises",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/exercise.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
                },
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                title: PText(
                  "Choose Trainer",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/pred.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PredModel(),
                  ));
                },
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                title: PText(
                  "Trainers",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/trainericons.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Trainer(),
                  ));
                },
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                title: PText(
                  "Calculate BMI",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading:
                    Image.asset('asset/image/bmicon.png', color: Colors.black),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BMICalculator(),
                  ));
                },
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                title: PText(
                  "About",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Icon(
                  Icons.info,
                  color: Colors.black,
                  size: 40,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ));
                },
              ),
              Divider(
                height: 20,
              ),
              ListTile(
                title: PText(
                  "Contact Us",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.black,
                  size: 40,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactUsPage(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.email,
                  size: 40, // Increase icon size
                  color: Colors.black,
                ),
                title: Text('Email: contact@example.com',
                    style: TextStyle(
                      color: Colors.black,
                    )), // Text color
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 40, // Increase icon size
                  color: Colors.black,
                ),
                title: Text('Phone: +123-456-7890',
                    style: TextStyle(
                      color: Colors.black,
                    )), // Text color
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 40, // Increase icon size
                  color: Colors.black,
                ),
                title: Text('Address: 123 Main St, City, Country',
                    style: TextStyle(
                      color: Colors.black,
                    )), // Text color
              ),
              SizedBox(height: 20),
              Text(
                'Send Us a Message',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20, // Increase font size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20, // Increase font size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Message',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20, // Increase font size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
                maxLines: 4,
              ),
              SizedBox(height: 20),
              Container(
                // Wrap the button with a Container
                color: Colors.white, // Set background color for the button
                child: ElevatedButton(
                  onPressed: () {
                    // Implement sending the message
                  },
                  child: Text(
                    'Send Message',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20, // Increase font size
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.greenAccent, // Button text color
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
