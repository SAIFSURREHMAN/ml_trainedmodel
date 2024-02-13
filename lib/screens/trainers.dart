import 'package:flutter/material.dart';
import 'package:trainer_trained/backend_datamex.dart';
import 'package:trainer_trained/model/mex_model.dart';
import 'package:trainer_trained/screens/about.dart';
import 'package:trainer_trained/screens/bmi.dart';
import 'package:trainer_trained/screens/contact_us.dart';
import 'package:trainer_trained/screens/trainer_detail.dart';
import '../PredModel.dart';
import '../reuseable/text_constraint.dart';
import 'home.dart';

class Trainer extends StatelessWidget {
  const Trainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
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
              ListTile(
                title: const PText(
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
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "Choose Trainer",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/pred.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PredModel(),
                  ));
                },
              ),
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "Trainers",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: Image.asset('asset/image/trainericons.png'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Trainer(),
                  ));
                },
              ),
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
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
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "About",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: const Icon(
                  Icons.info,
                  color: Colors.black,
                  size: 40,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
                },
              ),
              const Divider(
                height: 20,
              ),
              ListTile(
                title: const PText(
                  "Contact Us",
                  fontSize: 18,
                  color: Colors.black,
                ),
                leading: const Icon(
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
          padding:
              const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: trainerList.length,
                    shrinkWrap: false,
                    itemBuilder: (context, int index) {
                      TRAINER trainer = trainerList[index];

                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TrainerDetail(trainer),
                          ));
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(trainer.picture ?? '',
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  colorBlendMode: BlendMode.saturation,
                                  errorBuilder: (context, error, stackTrace) {
                                return const EXHText('No image');
                              }),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: EXHText(
                                  trainer.name ?? 'Trainer Name',
                                  fontSize: 18,
                                  ls: 2,
                                  color: Colors.black,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
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
