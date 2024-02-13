import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:trainer_trained/log/login.dart';

import '../reuseable/reuseablewidget.dart';
import '../reuseable/text_constraint.dart';

class ResetPass extends StatelessWidget {
  final TextEditingController _emailTextController = TextEditingController();

  ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // FocusScope is used to handle keyboard-related interactions
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 12, 196, 89),
                  Color.fromARGB(255, 9, 8, 9)
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Stack(children: [
                GestureDetector(
                    onTap: () {
                      // FocusScope is used to handle keyboard-related interactions
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const EXHText(
                                    "RESET PASSWORD",
                                    color: Colors.white,
                                    fontSize: 20,
                                    weight: FontWeight.normal,
                                    ls: 2,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 20,
                                            left: 20,
                                            right: 20,
                                            top: 20),
                                        child: reUsableTF("Email", Icons.lock,
                                            false, _emailTextController)),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: MaterialButton(
                                      onPressed: () {
                                        FocusScope.of(context).unfocus();

                                        FirebaseAuth.instance
                                            .sendPasswordResetEmail(
                                                email:
                                                    _emailTextController.text)
                                            .then((value) =>
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) => Login(),
                                                )))
                                            .onError((error, stackTrace) {
                                          QuickAlert.show(
                                            context: context,
                                            type: QuickAlertType.error,
                                            title: 'Oops...',
                                            text: 'Your email is incorrect',
                                            backgroundColor: Colors.black,
                                            titleColor: Colors.white,
                                            textColor: Colors.white,
                                          );
                                        });
                                      },
                                      color:
                                          const Color.fromARGB(255, 3, 222, 14),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: const BorderSide(
                                              color: Colors.white)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Icon(
                                          Icons.arrow_right_alt_rounded,
                                          size: 40,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const PText(
                                    'By registering, you agree to our Terms and Conditions and Privacy Policy.',
                                    fontSize: 15,
                                  ),
                                ],
                              ),
                            ))))
              ]),
            ),
          )),
    );
  }
}
