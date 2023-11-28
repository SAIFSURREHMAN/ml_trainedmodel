import 'package:flutter/material.dart';
import 'package:trainer_trained/detailpageEx/detailpagewl.dart';

import 'package:trainer_trained/model/mex_model.dart';

import 'package:trainer_trained/reuseable/text_constraint.dart';

import '../backend_datamex.dart';

class WeightLossPage extends StatelessWidget {
  const WeightLossPage({super.key});

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
                    'WEIGHT LOSS',
                    fontSize: 22,
                    color: Color.fromRGBO(62, 167, 78, 1),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8, // Set the spacing between rows
                  ),
                  itemCount: wgexList.length,
                  itemBuilder: (context, int index) {
                    WLEX wlex = wlexList[index];

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
                                wlex.picture ?? '',
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
                                  wlex.name ?? 'Exercise Name',
                                  fontSize: 16,
                                ),
                                EXHText(
                                  wlex.desc ?? 'Exercise Description',
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
                                            DetailPageWl(wlex),
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

              // Expanded(
              //   child: ListView.builder(
              //       itemCount: wlexList.length,
              //       shrinkWrap: false,
              //       itemBuilder: (context, int index) {
              //         WLEX wlex = wlexList[index];

              //         return Padding(
              //           padding: const EdgeInsets.all(5.0),
              //           child: Stack(
              //             children: [
              //               ClipRRect(
              //                 child: ColorFiltered(
              //                   colorFilter: ColorFilter.mode(
              //                     Colors.black.withOpacity(0.5), // Blend color
              //                     BlendMode.colorBurn, // Choose the blend mode
              //                   ),
              //                   child: Image.asset(wlex.picture ?? '',
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
              //                       top: 20, left: 20, right: 20),
              //                   child: Column(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.only(),
              //                         child: EXHText(
              //                           wlex.name ?? 'Exercise Name',
              //                           fontSize: 22,
              //                         ),
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.only(
              //                             top: 30, bottom: 30),
              //                         child: EXHText(
              //                           wlex.desc ?? 'Exercise Description',
              //                           color: Colors.white,
              //                           fontSize: 18,
              //                           weight: FontWeight.w800,
              //                         ),
              //                       ),
              //                       Row(
              //                         children: [
              //                           Flexible(
              //                             child: EXHText(
              //                               wlex.detail ?? 'Detail Name',
              //                               color: Colors.white,
              //                               fontSize: 14,
              //                               ml: 1,
              //                               weight: FontWeight.w500,
              //                             ),
              //                           ),
              //                           Container(
              //                             decoration: BoxDecoration(
              //                                 borderRadius:
              //                                     BorderRadius.circular(20)),
              //                             child: ElevatedButton(
              //                               onPressed: () {
              //                                 Navigator.of(context)
              //                                     .push(MaterialPageRoute(
              //                                   builder: (context) =>
              //                                       DetailPageWl(wlex),
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
            ],
          ),
        ),
      ),
    );
  }
}
