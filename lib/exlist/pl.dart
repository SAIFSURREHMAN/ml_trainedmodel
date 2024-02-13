import 'package:flutter/material.dart';

import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/detailpageEx/detailpagepl.dart';
import 'package:trainer_trained/model/mex_model.dart';
import 'package:trainer_trained/reuseable/text_constraint.dart';

class PowerLiftingPage extends StatefulWidget {
  const PowerLiftingPage({super.key});

  @override
  State<PowerLiftingPage> createState() => _PowerLiftingPageState();
}

class _PowerLiftingPageState extends State<PowerLiftingPage> {
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
                    'POWER LIFTING',
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
                  itemCount: plexList.length,
                  itemBuilder: (context, int index) {
                    PLEX plex = plexList[index];

                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          ClipRRect(
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.1),
                                BlendMode.colorBurn,
                              ),
                              child: Image.asset(
                                plex.picture ?? '',
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                fit: BoxFit.cover,
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
                                  plex.name ?? 'Exercise Name',
                                  fontSize: 16,
                                ),
                                Container(
                                  color: Colors.black.withOpacity(0.2),
                                  child: EXHText(
                                    plex.desc ?? 'Exercise Description',
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
                                            DetailPagePl(plex),
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
                          'Powerlifting Tips',
                          fontSize: 14,
                          color: Colors.white,
                          weight: FontWeight.normal,
                        ),
                        EXHText(
                          'Focus on compound lifts: ',
                          fontSize: 14,
                          color: Colors.white,
                          weight: FontWeight.bold,
                        ),
                        EXHText(
                          'Prioritize exercises like squats, deadlifts, and bench presses for building strength and muscle mass.',
                          color: Colors.white,
                          fontSize: 12,
                          weight: FontWeight.normal,
                        ),
                        EXHText(
                          'Follow a structured program: ',
                          color: Colors.white,
                          fontSize: 14,
                          weight: FontWeight.bold,
                        ),
                        EXHText(
                          'Adopt a well-designed powerlifting program that includes progressive overload and adequate recovery.',
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
