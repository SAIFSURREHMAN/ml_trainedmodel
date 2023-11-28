import 'package:flutter/material.dart';
import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/model/mex_model.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/bmi.dart';
import 'package:trainer_trained/screens/contact_us.dart';
import '../PredModel.dart';
import '../reuseable/text_constraint.dart';
import 'home.dart';

class Trainer extends StatelessWidget {
  const Trainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'TRAINERS',
          style: TextStyle(
              fontSize: 26,
              color: Color.fromRGBO(62, 167, 78, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: DrawerHeader(
          child: ListView(
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(top: 20.0),
              //   child: ListTile(
              //     title: PText(
              //       "Register",
              //       color: Colors.black,
              //       fontSize: 24,
              //     ),
              //     subtitle: PText(
              //       'Connect With Us',
              //       fontSize: 20,
              //       color: Colors.black,
              //     ),
              //     leading: Icon(
              //       Icons.login_rounded,
              //       color: Colors.black,
              //       size: 50,
              //     ),
              //     // onTap: () {
              //     //   Navigator.of(context).push(MaterialPageRoute(
              //     //     builder: (context) => LoginPage(),
              //     //   ));
              //     // },
              //   ),
              // ),
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
                leading:
                    Image.asset('asset/image/bmicon.png', color: Colors.black),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: trainerList.length,
                    shrinkWrap: false,
                    itemBuilder: (context, int index) {
                      TRAINER trainer = trainerList[index];

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(trainer.picture ?? '',
                                fit: BoxFit.fill,
                                colorBlendMode: BlendMode.saturation,
                                errorBuilder: (context, error, stackTrace) {
                              return const EXHText('No image');
                            }),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                EXHText(
                                  trainer.name ?? 'Exercise Name',
                                  fontSize: 18,
                                  ls: 2,
                                  color: Colors.black,
                                  weight: FontWeight.w600,
                                ),
                                Icon(
                                  Icons.arrow_right_outlined,
                                  size: 40,
                                  color: Colors.green,
                                )
                              ],
                            ),
                          ),
                          // RichText(
                          //   text: TextSpan(
                          //     style: TextStyle(
                          //       color: Colors.black,
                          //     ),
                          //     children: [
                          //       TextSpan(
                          //         text: trainer.name ?? 'Exercise Name',
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //         ),
                          //       ),
                          //       WidgetSpan(
                          //         child: IconButton(
                          //             onPressed: () {},
                          //             icon: Icon(Icons.arrow_right_outlined,
                          //                 color: Colors.green)),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      );
                      // Stack(
                      // children: [
                      //   ClipRRect(
                      //     child: ColorFiltered(
                      //       colorFilter: ColorFilter.mode(
                      //         Colors.black.withOpacity(0.5), // Blend color
                      //         BlendMode.colorBurn, // Choose the blend mode
                      //       ),
                      //       child: Image.asset(trainer.picture ?? '',
                      //           height:
                      //               MediaQuery.of(context).size.height * 0.3,
                      //           width: MediaQuery.of(context).size.width,
                      //           colorBlendMode: BlendMode.saturation,
                      //           errorBuilder: (context, error, stackTrace) {
                      //         return const EXHText('No image');
                      //       }),
                      //     ),
                      //     borderRadius: BorderRadius.circular(25),
                      //   ),
                      //   Padding(
                      //       padding: const EdgeInsets.only(
                      //           top: 20, left: 20, right: 20),
                      //       child: Column(
                      //         mainAxisAlignment:
                      //             MainAxisAlignment.spaceBetween,
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Padding(
                      //             padding: const EdgeInsets.only(),
                      //             child: EXHText(
                      //               trainer.name ?? 'Exercise Name',
                      //               fontSize: 22,
                      //             ),
                      //           ),
                      //           Padding(
                      //             padding: const EdgeInsets.only(
                      //                 top: 30, bottom: 30),
                      //             child: EXHText(
                      //               trainer.desc ?? 'Exercise Description',
                      //               color: Colors.white,
                      //               fontSize: 14,
                      //               weight: FontWeight.w800,
                      //             ),
                      //           ),
                      //           Row(
                      //             children: [
                      //               Flexible(
                      //                 child: EXHText(
                      //                   trainer.detail ?? 'Detail Name',
                      //                   color: Colors.white,
                      //                   fontSize: 14,
                      //                   ml: 1,
                      //                   weight: FontWeight.w500,
                      //                 ),
                      //               ),
                      //               Container(
                      //                 decoration: BoxDecoration(
                      //                     borderRadius:
                      //                         BorderRadius.circular(20)),
                      //                 child: ElevatedButton(
                      //                   onPressed: () {
                      //                     // Navigator.of(context)
                      //                     //     .push(MaterialPageRoute(
                      //                     //   builder: (context) =>
                      //                     //       DetailPageWg(),
                      //                     // ));
                      //                   },
                      //                   style: ButtonStyle(
                      //                       backgroundColor:
                      //                           MaterialStateProperty.all(
                      //                               Color.fromARGB(
                      //                                   255, 3, 222, 14))),
                      //                   child: EXHText(
                      //                     'Try',
                      //                     ls: 2,
                      //                     color: Colors.black,
                      //                     fontSize: 16,
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       ))
                      // ],
                      //)
                      //;
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
