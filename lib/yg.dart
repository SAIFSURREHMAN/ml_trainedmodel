import 'package:flutter/material.dart';
import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/model/mex_model.dart';

import 'package:trainer_trained/reuseable/text_constraint.dart';

class YogaPage extends StatelessWidget {
  const YogaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      gradient: RadialGradient(colors: [
                        Color.fromARGB(31, 15, 187, 217).withOpacity(0.4),
                        const Color.fromARGB(255, 168, 149, 149)
                            .withOpacity(0.4)
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: EXHText(
                      'Train Your Body For Good\nHealth And Vitality',
                      fontSize: 20,
                      color: Color.fromRGBO(62, 167, 78, 1),
                    ),
                  ),
                ),
              ),
              Text(
                'Exercises',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: ygexList.length,
                    shrinkWrap: false,
                    itemBuilder: (context, int index) {
                      YGEX ygex = ygexList[index];

                      return Stack(
                        children: [
                          ClipRRect(
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.5), // Blend color
                                BlendMode.colorBurn, // Choose the blend mode
                              ),
                              child: Image.asset(ygex.picture ?? '',
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width: MediaQuery.of(context).size.width,
                                  colorBlendMode: BlendMode.saturation,
                                  errorBuilder: (context, error, stackTrace) {
                                return const EXHText('No image');
                              }),
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(),
                                    child: EXHText(
                                      ygex.name ?? 'Exercise Name',
                                      fontSize: 22,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, bottom: 30),
                                    child: EXHText(
                                      ygex.desc ?? 'Exercise Description',
                                      color: Colors.white,
                                      fontSize: 14,
                                      weight: FontWeight.w800,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: EXHText(
                                          ygex.detail ?? 'Detail Name',
                                          color: Colors.white,
                                          fontSize: 14,
                                          ml: 1,
                                          weight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            //   if (index == 0) {
                                            //     Navigator.of(context)
                                            //         .push(MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           WeightGainPage(),
                                            //     ));
                                            //   } else if (index == 1) {
                                            //     Navigator.of(context)
                                            //         .push(MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           WeightLossPage(),
                                            //     ));
                                            //   } else if (index == 2) {
                                            //     Navigator.of(context)
                                            //         .push(MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           YogaPage(),
                                            //     ));
                                            //   } else if (index == 3) {
                                            //     Navigator.of(context)
                                            //         .push(MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           PowerLiftingPage(),
                                            //     ));
                                            //   }
                                          },
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color.fromARGB(
                                                          255, 3, 222, 14))),
                                          child: EXHText(
                                            'Try',
                                            ls: 2,
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ))
                        ],
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
