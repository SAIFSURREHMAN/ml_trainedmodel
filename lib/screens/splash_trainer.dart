import 'package:flutter/material.dart';

import '../log/login.dart';
import '../log/signup.dart';
import '../reuseable/text_constraint.dart';

class Trainer_Splash extends StatelessWidget {
  const Trainer_Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'asset/image/2.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 18, 18, 18),
                        Color.fromARGB(255, 139, 139, 142)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'RESHAPING YOUR BODY WITH OUR',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 222, 14),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const PText(
                'Over More Than 20 Personal Trainer For Achieving Your Fitness Goals.',
                color: Color.fromARGB(255, 248, 253, 248),
                fontSize: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
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
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: PText(
                        ' Our services are designed to guide and support you on your journey to a healthier you.\n Start your fitness journey today!',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 3, 222, 14),
                      child: Icon(
                        Icons.arrow_right_alt_rounded,
                        size: 50,
                      ),
                    ),
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
