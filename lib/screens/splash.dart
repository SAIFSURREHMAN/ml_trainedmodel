import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trainer_trained/screens/splash_trainer.dart';
import 'package:trainer_trained/reuseable/text_constraint.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 8),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Trainer_Splash()),
            ));
  }

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
                        const Color.fromARGB(255, 18, 18, 18),
                        const Color.fromARGB(255, 139, 139, 142)
                            .withOpacity(0.5)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Text(
                  'CHOOSE YOUR TRAINER ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 222, 14),
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    wordSpacing: 1,
                  ),
                ),
              ),
              const PText(
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
                          const Color.fromARGB(255, 139, 139, 142)
                              .withOpacity(0.5),
                          const Color.fromARGB(255, 18, 18, 18)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: const PText(
                    ' Our services are designed to guide and support you on your journey to a healthier you.\n Start your fitness journey today!',
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
