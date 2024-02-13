import 'package:flutter/material.dart';
import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/detailpageEx/detailpageyg.dart';
import 'package:trainer_trained/reuseable/text_constraint.dart';
import '../model/mex_model.dart';

class YogaPage extends StatefulWidget {
  const YogaPage({super.key});

  @override
  State<YogaPage> createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
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
                    'YOGA',
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
                  itemCount: ygexList.length,
                  itemBuilder: (context, int index) {
                    YGEX ygex = ygexList[index];

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
                                ygex.picture ?? '',
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
                                  ygex.name ?? 'Exercise Name',
                                  fontSize: 16,
                                ),
                                Container(
                                  color: Colors.black.withOpacity(0.2),
                                  child: EXHText(
                                    ygex.desc ?? 'Exercise Description',
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
                                            DetailPageYg(ygex),
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
                          'Yoga Tips',
                          fontSize: 14,
                          color: Colors.white,
                          weight: FontWeight.normal,
                        ),
                        EXHText(
                          'Practice regularly: ',
                          fontSize: 14,
                          color: Colors.white,
                          weight: FontWeight.bold,
                        ),
                        EXHText(
                          'Consistent yoga practice improves flexibility, strength, and mental well-being. Aim for at least 30 minutes of yoga per day.',
                          color: Colors.white,
                          fontSize: 12,
                          weight: FontWeight.normal,
                        ),
                        EXHText(
                          'Focus on mindfulness: ',
                          color: Colors.white,
                          fontSize: 14,
                          weight: FontWeight.bold,
                        ),
                        EXHText(
                          'Incorporate mindfulness and deep breathing into your practice for stress reduction and relaxation.',
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
