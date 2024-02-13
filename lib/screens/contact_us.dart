import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trainer_trained/PredModel.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/bmi.dart';
import 'package:trainer_trained/screens/home.dart';
import 'package:trainer_trained/screens/trainers.dart';

import '../reuseable/text_constraint.dart';

class ContactUsPage extends StatefulWidget {
  ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final TextEditingController _nameTextController = TextEditingController();

  final TextEditingController _emailTextController = TextEditingController();

  final TextEditingController _messageTextController = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();

  CollectionReference _reference =
      FirebaseFirestore.instance.collection('users_review');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.white, // Set app bar background color
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerHeader(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: const PText(
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
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "Choose Trainer",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/pred.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PredModel(),
                  ));
                },
              ),
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "Trainers",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/trainericons.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Trainer(),
                  ));
                },
              ),
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
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
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "About",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: const Icon(
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
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "Contact Us",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: const Icon(
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
              const Text(
                'Contact Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const ListTile(
                leading: Icon(
                  Icons.email,
                  size: 40, // Increase icon size
                  color: Colors.black,
                ),
                title: PText(
                  'Email: saifrehman005@gmail.com',
                  color: Colors.black,
                ), // Text color
              ),
              const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 40, // Increase icon size
                  color: Colors.black,
                ),
                title: PText(
                  'Phone: 03129220552',
                  color: Colors.black,
                ), // Text color
              ),
              const ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 40, // Increase icon size
                  color: Colors.black,
                ),
                title: PText(
                  'Address: Sindh Madersatul Islam University, II chundrigarh Road, Karachi',
                  color: Colors.black,
                ), // Text color
              ),
              const SizedBox(height: 20),
              const Text(
                'Send Us a Message',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Form(
                  key: key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameTextController,
                        decoration: const InputDecoration(
                          labelText: 'Your Name',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16, // Increase font size
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey), // Grey border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey), // Grey border color
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _emailTextController,
                        decoration: const InputDecoration(
                          labelText: 'Your Email',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16, // Increase font size
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey), // Grey border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey), // Grey border color
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: _messageTextController,
                        decoration: const InputDecoration(
                          labelText: 'Message',
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16, // Increase font size
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey), // Grey border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey), // Grey border color
                          ),
                        ),
                        maxLines: 4,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xff2e7b5b), // Button background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                          ),
                        ),
                        onPressed: () async {
                          if (key.currentState!.validate()) {
                            String name = _nameTextController.text;
                            String email = _emailTextController.text;
                            String message = _messageTextController.text;

                            Map<String, String> dataToSend = {
                              'name': name,
                              'email': email,
                              'message': message,
                            };

                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                            _reference.add(dataToSend);
                          }
                        },
                        child: Text(
                          'Send Your Review',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18, // Increase font size
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
