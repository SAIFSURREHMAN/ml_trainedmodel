// import 'package:flutter/material.dart';
// import 'package:trainer_trained/PredModel.dart';
// import 'package:trainer_trained/log/login.dart';
// import 'package:trainer_trained/screens/home.dart';
// import 'package:trainer_trained/screens/trainers.dart';

// class Onboarding extends StatelessWidget {
//   final List<OptionData> options = [
//     OptionData(name: 'EXERCISES', imageUrl: 'asset/image/pl.jpg'),
//     OptionData(name: 'TRAINER', imageUrl: 'asset/image/pl.jpg'),
//     OptionData(name: 'WHO TO CHOOSE', imageUrl: 'asset/image/pl.jpg'),
//     OptionData(name: 'CALCULATE BMI', imageUrl: 'asset/image/pl.jpg'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 20.0,
//           mainAxisSpacing: 100.0,
//         ),
//         itemCount: options.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               _onOptionTapped(context, options[index]);
//             },
//             child: OptionItem(options[index]),
//           );
//         },
//       ),
//     );
//   }

//   void _onOptionTapped(BuildContext context, OptionData option) {
//     switch (option.name) {
//       case 'EXERCISES':
//         // Navigate to the Exercises page
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => Home(),
//         ));
//         break;
//       case 'TRAINER':
//         // Navigate to the Trainer page
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => Trainer(),
//         ));
//         break;
//       case 'WHO TO CHOOSE':
//         // Navigate to the Trainer page
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => PredModel(),
//         ));
//         break;
//       case 'CALCULATE BMI':
//         // Navigate to the Trainer page
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => Login(),
//         ));
//         break;

//       // Add cases for other options as needed
//     }
//   }
// }

// class OptionItem extends StatelessWidget {
//   final OptionData option;

//   OptionItem(this.option);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             option.imageUrl,
//             height: 100,
//             width: 100,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(height: 16.0),
//           Text(
//             option.name,
//             style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class OptionData {
//   final String name;
//   final String imageUrl;

//   OptionData({required this.name, required this.imageUrl});
// }
