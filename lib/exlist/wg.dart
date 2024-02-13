import 'package:flutter/material.dart';
import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/model/mex_model.dart';
import 'package:trainer_trained/detailpageEx/detailpagewg.dart';

import 'package:trainer_trained/reuseable/text_constraint.dart';

class WeightGainPage extends StatefulWidget {
  const WeightGainPage({super.key});

  @override
  State<WeightGainPage> createState() => _WeightGainPageState();
}

class _WeightGainPageState extends State<WeightGainPage> {
  bool isContainerVisible = false;
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
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: EXHText(
                    'WEIGHT GAIN',
                    fontSize: 22,
                    color: Color.fromRGBO(62, 167, 78, 1),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8, // Set the spacing between rows
                  ),
                  itemCount: wgexList.length,
                  itemBuilder: (context, int index) {
                    WGEX wgex = wgexList[index];

                    return Padding(
                      padding: const EdgeInsets.all(5),
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
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width,
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
                                Container(
                                  color: Colors.grey.withOpacity(0.2),
                                  child: EXHText(
                                    wgex.desc ?? 'Exercise Description',
                                    color: Colors.white,
                                    fontSize: 16,
                                    ls: 2,
                                    weight: FontWeight.normal,
                                  ),
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
                                        const Color.fromARGB(255, 3, 222, 14)
                                            .withOpacity(0.7),
                                      ),
                                    ),
                                    child: const EXHText(
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    isContainerVisible = !isContainerVisible;
                  });
                },
                child: Center(
                  child: Icon(
                    isContainerVisible
                        ? Icons.arrow_circle_down
                        : Icons.arrow_circle_up,
                    // Change to the desired icons
                    size: 50,
                    color: Colors.black,
                  ),
                ),
              ),
              // Container that will be shown/hidden based on the icon press
              if (isContainerVisible)
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromRGBO(62, 167, 78, 1),
                        Colors.black.withOpacity(0.8)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: EXHText(
                            'TIP',
                            fontSize: 16,
                            weight: FontWeight.bold,
                          ),
                        ),
                        EXHText(
                          'Tips for Weight Gain',
                          fontSize: 14,
                          color: Colors.white,
                          weight: FontWeight.normal,
                        ),
                        EXHText(
                          'Eat a calorie surplus: ',
                          fontSize: 14,
                          color: Colors.white,
                          weight: FontWeight.bold,
                        ),
                        EXHText(
                          'You need to consume more calories than you burn each day to gain weight. Aim for a surplus of 300-500 calories per day.',
                          color: Colors.white,
                          fontSize: 12,
                          weight: FontWeight.normal,
                        ),
                        EXHText(
                          'Focus on protein: ',
                          color: Colors.white,
                          fontSize: 14,
                          weight: FontWeight.bold,
                        ),
                        EXHText(
                          'Protein is essential for building muscle.',
                          color: Colors.white,
                          fontSize: 14,
                          weight: FontWeight.normal,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
