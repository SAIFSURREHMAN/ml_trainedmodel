import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:trainer_trained/reuseable/reuseablewidget.dart';
import 'package:trainer_trained/reuseable/text_constraint.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/bmi.dart';
import 'package:trainer_trained/screens/contact_us.dart';
import 'package:trainer_trained/screens/home.dart';
import 'package:trainer_trained/screens/trainers.dart';

class PredModel extends StatefulWidget {
  const PredModel({Key? key}) : super(key: key);

  @override
  _PredModelState createState() => _PredModelState();
}

class _PredModelState extends State<PredModel> {
  var predValue = "";
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController fatPercentageController = TextEditingController();
  TextEditingController carbsController = TextEditingController();
  TextEditingController sugarController = TextEditingController();

  @override
  void initState() {
    super.initState();
    predValue = "Click the button to predict";
  }

  Future<void> predData() async {
    FocusScope.of(context).unfocus();

    // Load the TFLite model
    final interpreterOptions = InterpreterOptions();
    final interpreter = await Interpreter.fromAsset(
        'assets/trainer_model.tflite',
        options: interpreterOptions);

    // Collect user input for the features
    double AGE = double.parse(ageController.text);
    double WEIGHT = double.parse(weightController.text);
    double HEIGHT = double.parse(heightController.text);
    double FAT = double.parse(fatPercentageController.text);
    double CARBS = double.parse(carbsController.text);
    double SUGAR = double.parse(sugarController.text);

    // Standardize user input data
    final inputFeatures =
        Float32List.fromList([AGE, WEIGHT, HEIGHT, FAT, CARBS, SUGAR]);

    // Perform inference
    final output = List.filled(1, [0, 0]).reshape([1, 2]);
    interpreter.run(inputFeatures, output);
    print(output);
    final threshold = 2.854763872117805e-21;
    final predictedClass = (output[0][0] >= threshold) ? 0 : 1;
    setState(() {
      predValue = predictedClass.toString();
    }); // Close the interpreter to release resources
    interpreter.close();
    if (predictedClass == 0) {
      setState(() {
        predValue = "Junior Trainer";
      });
    } else {
      setState(() {
        predValue = "Experienced Trainer";
      });
    }
  }

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
              icon: new Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Text(
            'ML MODEL',
            style: TextStyle(
                letterSpacing: 2,
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: DrawerHeader(
            child: ListView(
              children: <Widget>[
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
                  leading: Image.asset('asset/image/bmicon.png',
                      color: Colors.black),
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
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 12, 196, 89),
                const Color.fromARGB(255, 9, 8, 9)
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    // FocusScope is used to handle keyboard-related interactions
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            reUsableTFML("Age", Icons.calendar_today_rounded,
                                ageController),
                            SizedBox(
                              height: 10,
                            ),
                            reUsableTFML(
                                "Weight",
                                Icons.monitor_weight_outlined,
                                weightController),
                            SizedBox(
                              height: 10,
                            ),
                            reUsableTFML("Height", Icons.height_rounded,
                                heightController),
                            SizedBox(
                              height: 10,
                            ),
                            reUsableTFML("Fat", Icons.health_and_safety,
                                fatPercentageController),
                            SizedBox(
                              height: 10,
                            ),
                            reUsableTFML("Carbs", Icons.health_and_safety,
                                carbsController),
                            SizedBox(
                              height: 10,
                            ),
                            reUsableTFML("Sugar", Icons.health_and_safety,
                                sugarController),
                            // TextField(
                            //   controller: ageController,
                            //   decoration: InputDecoration(labelText: 'Age'),
                            // ),
                            // TextField(
                            //   controller: weightController,
                            //   decoration: InputDecoration(labelText: 'Weight'),
                            // ),
                            // TextField(
                            //   controller: heightController,
                            //   decoration: InputDecoration(labelText: 'Height'),
                            // ),
                            // TextField(
                            //   controller: fatPercentageController,
                            //   decoration: InputDecoration(labelText: 'Fat Percentage'),
                            // ),
                            // TextField(
                            //   controller: carbsController,
                            //   decoration: InputDecoration(labelText: 'Carbs'),
                            // ),
                            // TextField(
                            //   controller: sugarController,
                            //   decoration: InputDecoration(labelText: 'Sugar'),
                            // ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: predData,
                              child: EXHText(
                                'PREDICT',
                                weight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PText(
                              'PREDICTED TRAINER:\n $predValue',
                              fontSize: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
