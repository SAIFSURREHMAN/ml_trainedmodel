import 'package:flutter/material.dart';
import 'package:trainer_trained/log/login.dart';

import '../reuseable/reuseablewidget.dart';
import '../reuseable/text_constraint.dart';

class ResetPass extends StatelessWidget {
  // final TextEditingController _passwordTextController = TextEditingController();
  // final TextEditingController _nameTextController = TextEditingController();
  // final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          // FocusScope is used to handle keyboard-related interactions
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(children: [
          Image.asset(
            'asset/image/splashscreen.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const EXHText(
                  "RESET PASSWORD",
                  color: Color.fromARGB(255, 3, 222, 14),
                  fontSize: 20,
                  weight: FontWeight.w600,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20, left: 20, right: 20, top: 20),
                    child: reUsableTF(
                        "Email", Icons.lock, false, _emailTextController)),
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                    // FirebaseAuth.instance
                    //     .sendPasswordResetEmail(email: _emailTextController.text)
                    //     .then((value) =>
                    //         Navigator.of(context).push(MaterialPageRoute(
                    //           builder: (context) => MainScreen(),
                    //         )))
                    //     .onError((error, stackTrace) {
                    //   QuickAlert.show(
                    //     context: context,
                    //     type: QuickAlertType.error,
                    //     title: 'Oops...',
                    //     text: 'Your email is incorrect',
                    //     backgroundColor: Colors.black,
                    //     titleColor: Colors.white,
                    //     textColor: Colors.white,
                    //   );
                    // });
                  },
                  color: const Color.fromARGB(255, 3, 222, 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.white)),
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
        ]),
      ),
    );
  }
}
