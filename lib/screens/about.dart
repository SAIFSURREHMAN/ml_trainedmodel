import 'package:flutter/material.dart';
import 'package:trainer_trained/screens/contact_us.dart';
import 'package:trainer_trained/screens/trainers.dart';

import '../PredModel.dart';
import '../reuseable/text_constraint.dart';
import 'bmi.dart';
import 'home.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Our App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black, // Text color
          ),
        ),
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
              SizedBox(height: 20),
              Text(
                'App Name: My Fitness App',
                style:
                    TextStyle(fontSize: 18, color: Colors.black), // Text color
              ),
              Text(
                'Version: 1.0.0',
                style:
                    TextStyle(fontSize: 18, color: Colors.black), // Text color
              ),
              Text(
                'Description: My Fitness App helps you achieve your fitness goals with personalized workout plans and expert guidance.',
                style:
                    TextStyle(fontSize: 18, color: Colors.black), // Text color
              ),
              SizedBox(height: 20),
              Text(
                'Contact Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black, // Text color
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.email, color: Colors.black, size: 40),
                title: Text('Email: contact@example.com',
                    style: TextStyle(color: Colors.black)), // Text color
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.black, size: 40),
                title: Text('Phone: +123-456-7890',
                    style: TextStyle(color: Colors.black)), // Text color
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 40,
                ),
                title: Text('Address: 123 Main St, City, Country',
                    style: TextStyle(color: Colors.black)), // Text color
              ),
              SizedBox(height: 20),
              Text(
                'About the Team',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black, // Text color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Our dedicated team at My Fitness App is committed to helping you achieve your fitness goals. We strive to provide the best fitness solutions and support.',
                style:
                    TextStyle(fontSize: 18, color: Colors.black), // Text color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
