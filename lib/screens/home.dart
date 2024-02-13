import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trainer_trained/PredModel.dart';
import 'package:trainer_trained/log/login.dart';
import 'package:trainer_trained/model/mex_model.dart';

import 'package:trainer_trained/reuseable/text_constraint.dart';

import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/exlist/pl.dart';
import 'package:trainer_trained/exlist/wg.dart';
import 'package:trainer_trained/exlist/wl.dart';
import 'package:trainer_trained/exlist/yg.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/contact_us.dart';
import 'package:trainer_trained/screens/trainers.dart';
import 'bmi.dart';

class Home extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          'EXERCISES',
          style: TextStyle(
              fontSize: 26,
              color: Color.fromRGBO(62, 167, 78, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          MaterialButton(
            onPressed: () async {
              await _auth.signOut();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Login(),
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black,
              ),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: mexList.length,
                    shrinkWrap: false,
                    itemBuilder: (context, int index) {
                      MEX mex = mexList[index];

                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5), // Blend color
                                  BlendMode.colorBurn, // Choose the blend mode
                                ),
                                child: Image.asset(mex.picture ?? '',
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    width: MediaQuery.of(context).size.width,
                                    colorBlendMode: BlendMode.saturation,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                  return const EXHText('No image');
                                }),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, right: 20, bottom: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    EXHText(
                                      mex.name ?? 'Exercise Name',
                                      fontSize: 22,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, bottom: 10),
                                      child: EXHText(
                                        mex.desc ?? 'Exercise Description',
                                        color: Colors.white,
                                        fontSize: 14,
                                        weight: FontWeight.w800,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (index == 0) {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  WeightGainPage(),
                                            ));
                                          } else if (index == 1) {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  const WeightLossPage(),
                                            ));
                                          } else if (index == 2) {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  const YogaPage(),
                                            ));
                                          } else if (index == 3) {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  const PowerLiftingPage(),
                                            ));
                                          }
                                        },
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color.fromARGB(
                                                        255, 3, 222, 14))),
                                        child: const EXHText(
                                          'Try',
                                          ls: 3,
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                    //   ],
                                    // ),
                                  ],
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
