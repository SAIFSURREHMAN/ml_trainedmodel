import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PredModel(),
    );
  }
}

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Flutter ML Integration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Age'),
            ),
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight'),
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height'),
            ),
            TextField(
              controller: fatPercentageController,
              decoration: InputDecoration(labelText: 'Fat Percentage'),
            ),
            TextField(
              controller: carbsController,
              decoration: InputDecoration(labelText: 'Carbs'),
            ),
            TextField(
              controller: sugarController,
              decoration: InputDecoration(labelText: 'Sugar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: predData,
              child: Text('Predict'),
            ),
            SizedBox(height: 20),
            Text(
              'Predicted Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              predValue,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
