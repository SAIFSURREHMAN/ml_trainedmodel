import 'package:flutter/material.dart';
import 'package:trainer_trained/screens/splash_trainer.dart';

import 'home.dart';
import 'package:trainer_trained/reuseable/text_constraint.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/image/splashscreen.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 18, 18, 18),
                        Color.fromARGB(255, 139, 139, 142).withOpacity(0.5)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Text(
                  'CHOOSE YOUR TRAINER ',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 3, 222, 14),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    wordSpacing: 1,
                  ),
                ),
              ),
              PText(
                'Getting fit is not just a choice; it\'s a commitment to a healthier, more fulfilling life.',
                color: Color.fromARGB(255, 248, 253, 248),
                fontSize: 20,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 139, 139, 142).withOpacity(0.5),
                          Color.fromARGB(255, 18, 18, 18)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: PText(
                    ' Our services are designed to guide and support you on your journey to a healthier you.\n Start your fitness journey today!',
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                        },
                        child: EXHText(
                          'Skip',
                          fontSize: 20,
                          color: Colors.white,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Trainer_Splash(),
                        ));
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 3, 222, 14),
                        child: Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
