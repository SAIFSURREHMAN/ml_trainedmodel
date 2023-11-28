// // import 'dart:async';

// // import 'package:flutter/material.dart';

// // class ExerciseModel {
// //   Stopwatch stopwatch = Stopwatch();
// //   bool isRunning = false;
// //   bool isDone = false;
// // }

// // class ExerciseProvider extends ChangeNotifier {
// //   ExerciseModel _model = ExerciseModel();

// //   ExerciseModel get model => _model;

// //   void startStopwatch() {
// //     if (!_model.stopwatch.isRunning) {
// //       print('Starting stopwatch...');
// //       _model.stopwatch.start();

// //       // Notify listeners when the stopwatch starts running
// //       _model.isRunning = true;
// //       notifyListeners();

// //       // Periodically update listeners while the stopwatch is running
// //       Timer.periodic(const Duration(milliseconds: 100), (timer) {
// //         notifyListeners();
// //       });
// //     }
// //   }

// //   void stopStopwatch() {
// //     if (_model.stopwatch.isRunning) {
// //       print('Stopping stopwatch...');
// //       _model.stopwatch.stop();

// //       // Notify listeners when the stopwatch stops
// //       _model.isRunning = false;
// //       notifyListeners();
// //     }
// //   }

// //   void markAsDone() {
// //     _model.isDone = true;
// //     stopStopwatch();
// //     _model.stopwatch.reset();
// //     notifyListeners();
// //   }

// //   void resetTimer() {
// //     _model.stopwatch.reset();
// //     _model.isDone = false;
// //     notifyListeners();
// //   }

// //   String formatTime(int milliseconds) {
// //     int seconds = (milliseconds / 1000).truncate();
// //     int minutes = (seconds / 60).truncate();
// //     seconds = seconds % 60;
// //     int millisecondsPart = (milliseconds % 1000).truncate();
// //     return '$minutes:${seconds.toString().padLeft(2, '0')}.${(millisecondsPart / 100).truncate()}';
// //   }
// // }


// ////////stop watch jis bhi ui pe lagaana hu

// //          Visibility(
// //                   visible: Provider.of<ExerciseProvider>(context)
// //                       .model
// //                       .stopwatch
// //                       .isRunning,
// //                   child: Padding(
// //                     padding: const EdgeInsets.symmetric(vertical: 20.0),
// //                     child: Consumer<ExerciseProvider>(
// //                       builder: (context, provider, child) {
// //                         return Text(
// //                           'Time: ${provider.formatTime(provider.model.stopwatch.elapsedMilliseconds)}',
// //                           style: TextStyle(
// //                             fontSize: 18,
// //                             color: Colors.black,
// //                             fontWeight: FontWeight.w400,
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(vertical: 20.0),
// //                   child: ElevatedButton(
// //                     onPressed: () {
// //                       var provider = Provider.of<ExerciseProvider>(context,
// //                           listen: false);
// //                       if (provider.model.isRunning) {
// //                         provider.stopStopwatch();
// //                       } else {
// //                         provider.startStopwatch();
// //                       }
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(8.0),
// //                       ),
// //                       backgroundColor: Provider.of<ExerciseProvider>(context)
// //                               .model
// //                               .isRunning
// //                           ? Colors.red
// //                           : Color.fromARGB(255, 3, 222, 14),
// //                       padding: EdgeInsets.all(15),
// //                     ),
// //                     child: Text(
// //                       Provider.of<ExerciseProvider>(context).model.isRunning
// //                           ? 'Stop'
// //                           : 'Start',
// //                       style: TextStyle(fontSize: 20, color: Colors.white),
// //                     ),
// //                   ),
// //                 ),
// //                 Visibility(
// //                   visible: Provider.of<ExerciseProvider>(context)
// //                       .model
// //                       .stopwatch
// //                       .isRunning,
// //                   child: Padding(
// //                     padding: const EdgeInsets.symmetric(vertical: 20.0),
// //                     child: ElevatedButton(
// //                       onPressed: () {
// //                         Provider.of<ExerciseProvider>(context, listen: false)
// //                             .markAsDone();
// //                       },
// //                       style: ElevatedButton.styleFrom(
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(8.0),
// //                         ),
// //                         backgroundColor: Colors.blue,
// //                         padding: EdgeInsets.all(15),
// //                       ),
// //                       child: Text(
// //                         'Done',
// //                         style: TextStyle(fontSize: 20, color: Colors.white),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 MaterialButton(
// //                   onPressed: () {
// //                     Provider.of<ExerciseProvider>(context, listen: false)
// //                         .resetTimer();
// //                   },
// //                   child: Text(
// //                     'Reset',
// //                     style: TextStyle(color: Colors.black, fontSize: 10),
// //                   ),
// //                 ),
//        /////////container
//        ///Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         border: Border.all(
//             color: Provider.of<ExerciseProvider>(context).model.isDone
//                 ? Color.fromARGB(255, 3, 222, 14)
//                 : Colors.black,
//             style: BorderStyle.solid,
//             width: 8),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Align(
//             alignment: Alignment.topRight,
//             child: Visibility(
//               visible: Provider.of<ExerciseProvider>(context).model.isDone,
//               child: Icon(
//                 Icons.check,
//                 color: Color.fromARGB(255, 3, 222, 14),
//                 size: 40,
//               ),
//             ),
//           ),
//           ClipRRect(
//             child: Image.asset(
//               wgex.picture1 ?? '',
//               height: MediaQuery.of(context).size.height * 0.2,
//               width: MediaQuery.of(context).size.width,
//               fit: BoxFit.fill,
//               colorBlendMode: BlendMode.saturation,
//               errorBuilder: (context, error, stackTrace) {
//                 return const Text('No image');
//               },
//             ),
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(15),
//               bottomRight: Radius.circular(15),
//             ),
//           ),
//           EXHText(
//             'Excercise: ${wgex.exname1}',
//             fontSize: 18,
//             color: Colors.black,
//             weight: FontWeight.w400,
//           ),
//           EXHText(
//             'Minimum time: ${wgex.mintime1}',
//             fontSize: 18,
//             color: Colors.black,
//             weight: FontWeight.w400,
//           ),
//           EXHText(
//             'Maximum time: ${wgex.maxtime1}',
//             fontSize: 18,
//             color: Colors.black,
//             weight: FontWeight.w400,
//           ),
//           EXHText(
//             'Repetitions: ${wgex.reps1}',
//             fontSize: 18,
//             color: Colors.black,
//             weight: FontWeight.w400,
//           ),
//           EXHText(
//             'Sets: ${wgex.set1}',
//             fontSize: 18,
//             color: Colors.black,
//             weight: FontWeight.w400,
//           ),
//           EXHText(
//             'INSTRUCTIONS:',
//             fontSize: 18,
//             color: Colors.black,
//             weight: FontWeight.w400,
//           ),
//           RichText(
//             text: TextSpan(
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: Colors.black,
//               ),
//               children: [
//                 if (wgex.ins11!.isNotEmpty)
//                   WidgetSpan(
//                     child: Icon(Icons.arrow_forward,
//                         size: 12, color: Colors.black),
//                   ),
//                 if (wgex.ins11!.isNotEmpty)
//                   TextSpan(
//                     text: '${wgex.ins11}',
//                   ),
//                 if (wgex.ins12!.isNotEmpty)
//                   WidgetSpan(
//                     child: Icon(Icons.arrow_forward,
//                         size: 12, color: Colors.black),
//                   ),
//                 if (wgex.ins12!.isNotEmpty)
//                   TextSpan(
//                     text: '${wgex.ins12}',
//                   ),
//                 if (wgex.ins13!.isNotEmpty)
//                   WidgetSpan(
//                     child: Icon(Icons.arrow_forward,
//                         size: 12, color: Colors.black),
//                   ),
//                 if (wgex.ins13!.isNotEmpty)
//                   TextSpan(
//                     text: '${wgex.ins13}',
//                   ),
//                 if (wgex.ins14!.isNotEmpty)
//                   WidgetSpan(
//                     child: Icon(Icons.arrow_forward,
//                         size: 12, color: Colors.black),
//                   ),
//                 if (wgex.ins14!.isNotEmpty)
//                   TextSpan(
//                     text: '${wgex.ins14}',
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
 