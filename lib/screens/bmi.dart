import 'package:flutter/material.dart';
import 'package:trainer_trained/PredModel.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/contact_us.dart';
import 'package:trainer_trained/screens/home.dart';
import 'package:trainer_trained/screens/trainers.dart';

import '../reuseable/text_constraint.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double weight = 0.0;
  double heightFeet = 0.0;
  double heightInches = 0.0;
  double bmi = 0.0;
  String bmiCategory = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // FocusScope is used to handle keyboard-related interactions
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent.withOpacity(0.4),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
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
                  leading: Image.asset('asset/image/bmicon.png',
                      color: Colors.black),
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
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 12, 196, 89),
                Color.fromARGB(255, 9, 8, 9)
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                weight = double.parse(value);
                              });
                            },
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              label: Text('Weight'),
                              prefixIcon: Icon(
                                Icons.monitor_weight_outlined,
                                color: Colors.white,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 2, 52, 4))),
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 227, 223, 223),
                                  fontSize: 18),
                            ),
                            keyboardType:
                                const TextInputType.numberWithOptions(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      heightFeet = double.parse(value);
                                    });
                                  },
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  cursorColor: Colors.white,
                                  decoration: const InputDecoration(
                                    label: Text('Height (Feet)'),
                                    prefixIcon: Icon(
                                      Icons.height,
                                      color: Colors.white,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 2, 52, 4))),
                                    labelStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 227, 223, 223),
                                        fontSize: 18),
                                  ),
                                  keyboardType:
                                      const TextInputType.numberWithOptions(),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {
                                      heightInches = double.parse(value);
                                    });
                                  },
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  cursorColor: Colors.white,
                                  decoration: const InputDecoration(
                                    label: Text('Inch'),
                                    prefixIcon: Icon(
                                      Icons.height,
                                      color: Colors.white,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color:
                                                Color.fromARGB(255, 2, 52, 4))),
                                    labelStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 227, 223, 223),
                                        fontSize: 18),
                                  ),
                                  keyboardType:
                                      const TextInputType.numberWithOptions(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();

                              calculateBMI();
                              showResultDialog();
                            },
                            child: const Text(
                              'Calculate BMI',
                              style: TextStyle(
                                  letterSpacing: 3, color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: DataTable(
                              columns: const [
                                DataColumn(label: Text('BMI Category')),
                                DataColumn(label: Text('BMI Range')),
                              ],
                              rows: const [
                                DataRow(cells: [
                                  DataCell(Text('Underweight')),
                                  DataCell(Text('BMI < 18.5')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Normal Weight')),
                                  DataCell(Text('18.5 <= BMI < 24.9')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Overweight')),
                                  DataCell(Text('25 <= BMI < 29.9')),
                                ]),
                                DataRow(cells: [
                                  DataCell(Text('Obese')),
                                  DataCell(Text('BMI >= 30')),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    double heightInMeters = ((heightFeet * 12) + heightInches) * 0.0254;
    bmi = weight / (heightInMeters * heightInMeters);
    determineBMICategory();
  }

  void determineBMICategory() {
    if (bmi < 18.5) {
      bmiCategory = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      bmiCategory = 'Normal Weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      bmiCategory = 'Overweight';
    } else {
      bmiCategory = 'Obese';
    }
  }

  void showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('BMI Result'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Your BMI is: ${bmi.toStringAsFixed(2)}'),
              const SizedBox(height: 8.0),
              Text('BMI Category: $bmiCategory'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                resetValues();
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void resetValues() {
    setState(() {
      weight = 0.0;
      heightFeet = 0.0;
      heightInches = 0.0;
      bmi = 0.0;
      bmiCategory = '';
    });
  }
}
