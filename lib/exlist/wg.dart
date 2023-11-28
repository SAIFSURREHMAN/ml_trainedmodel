import 'package:flutter/material.dart';
import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/model/mex_model.dart';
import 'package:trainer_trained/detailpageEx/detailpagewg.dart';

import 'package:trainer_trained/reuseable/text_constraint.dart';

class WeightGainPage extends StatelessWidget {
  const WeightGainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: EXHText(
                    'WEIGHT GAIN',
                    fontSize: 22,
                    color: Color.fromRGBO(62, 167, 78, 1),
                  ),
                ),
              ),
              // Expanded(
              //   child: ListView.builder(
              //       itemCount: wgexList.length,
              //       shrinkWrap: false,
              //       itemBuilder: (context, int index) {
              //         WGEX wgex = wgexList[index];

              //         return Padding(
              //           padding: EdgeInsets.all(5),
              //           child: Stack(
              //             children: [
              //               ClipRRect(
              //                 child: ColorFiltered(
              //                   colorFilter: ColorFilter.mode(
              //                     Colors.black.withOpacity(0.5), // Blend color
              //                     BlendMode.colorBurn, // Choose the blend mode
              //                   ),
              //                   child: Image.asset(wgex.picture ?? '',
              //                       height: MediaQuery.of(context).size.height *
              //                           0.25,
              //                       fit: BoxFit.cover,
              //                       width: MediaQuery.of(context).size.width,
              //                       colorBlendMode: BlendMode.saturation,
              //                       errorBuilder: (context, error, stackTrace) {
              //                     return const EXHText('No image');
              //                   }),
              //                 ),
              //                 borderRadius: BorderRadius.circular(25),
              //               ),
              //               Padding(
              //                   padding: const EdgeInsets.only(
              //                     top: 20,
              //                     left: 20,
              //                     right: 20,
              //                   ),
              //                   child: Column(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.only(),
              //                         child: EXHText(
              //                           wgex.name ?? 'Exercise Name',
              //                           fontSize: 22,
              //                         ),
              //                       ),
              //                       EXHText(
              //                         wgex.desc ?? 'Exercise Description',
              //                         color: Colors.white,
              //                         fontSize: 18,
              //                       ),
              //                       SizedBox(
              //                         height: 15,
              //                       ),
              //                       Row(
              //                         children: [
              //                           Flexible(
              //                             child: EXHText(
              //                               wgex.detail ?? 'Detail Name',
              //                               color: Colors.white,
              //                               fontSize: 14,
              //                               ml: 1,
              //                               weight: FontWeight.w500,
              //                             ),
              //                           ),
              //                           Container(
              //                             decoration: BoxDecoration(
              //                                 borderRadius:
              //                                     BorderRadius.circular(10)),
              //                             child: ElevatedButton(
              //                               onPressed: () {
              //                                 Navigator.of(context)
              //                                     .push(MaterialPageRoute(
              //                                   builder: (context) =>
              //                                       DetailPageWg(wgex),
              //                                 ));
              //                               },
              //                               style: ButtonStyle(
              //                                   backgroundColor:
              //                                       MaterialStateProperty.all(
              //                                           Color.fromARGB(
              //                                               255, 3, 222, 14))),
              //                               child: EXHText(
              //                                 'Try',
              //                                 ls: 2,
              //                                 color: Colors.black,
              //                                 fontSize: 16,
              //                               ),
              //                             ),
              //                           )
              //                         ],
              //                       ),
              //                     ],
              //                   ))
              //             ],
              //           ),
              //         );
              //       }),
              // ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8, // Set the spacing between rows
                  ),
                  itemCount: wgexList.length,
                  itemBuilder: (context, int index) {
                    WGEX wgex = wgexList[index];

                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          ClipRRect(
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5),
                                BlendMode.colorBurn,
                              ),
                              child: Image.asset(
                                wgex.picture ?? '',
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                colorBlendMode: BlendMode.saturation,
                                errorBuilder: (context, error, stackTrace) {
                                  return const EXHText('No image');
                                },
                              ),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 20, right: 20, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EXHText(
                                  wgex.name ?? 'Exercise Name',
                                  fontSize: 16,
                                ),
                                EXHText(
                                  wgex.desc ?? 'Exercise Description',
                                  color: Colors.white,
                                  fontSize: 16,
                                  ls: 2,
                                  weight: FontWeight.normal,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPageWg(wgex),
                                      ));
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Color.fromARGB(255, 3, 222, 14)
                                            .withOpacity(0.7),
                                      ),
                                    ),
                                    child: EXHText(
                                      'Try',
                                      ls: 2,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
