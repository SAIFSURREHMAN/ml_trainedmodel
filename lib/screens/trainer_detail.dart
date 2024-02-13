import 'package:flutter/material.dart';
import 'package:trainer_trained/model/mex_model.dart';
import '../reuseable/text_constraint.dart';

class TrainerDetail extends StatelessWidget {
  final TRAINER trainer;

  const TrainerDetail(this.trainer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(trainer.picture ?? '',
                      height: MediaQuery.of(context).size.height * 0.4,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      colorBlendMode: BlendMode.saturation,
                      errorBuilder: (context, error, stackTrace) {
                    return const EXHText('No image');
                  }),
                ),
                EXHText(
                  trainer.name ?? 'Trainer Name',
                  fontSize: 20,
                  ls: 2,
                  color: Colors.black,
                  weight: FontWeight.w600,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: EXHText(
                    'AWARDS',
                    fontSize: 18,
                    ls: 2,
                    color: Colors.black,
                    weight: FontWeight.w600,
                  ),
                ),
                EXHText(
                  trainer.award ?? 'Trainer Awards',
                  fontSize: 18,
                  ls: 2,
                  color: Colors.black,
                  weight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: EXHText(
                    'SPECIALITY',
                    fontSize: 18,
                    ls: 2,
                    color: Colors.black,
                    weight: FontWeight.w600,
                  ),
                ),
                EXHText(
                  trainer.detail ?? 'Trainer detail',
                  fontSize: 18,
                  ls: 2,
                  color: Colors.black,
                  weight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 10,
                ),
                EXHText(
                  trainer.desc ?? 'Trainer Description',
                  fontSize: 18,
                  color: Colors.black,
                  weight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 15, 31, 76),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Icon(
                                    Icons.call_outlined,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: trainer.contact ?? 'Trainer Contact',
                                  style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
