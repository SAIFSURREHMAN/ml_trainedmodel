import 'package:flutter/material.dart';
import 'package:trainer_trained/log/reset_password.dart';
import 'package:trainer_trained/screens/home.dart';
import '../reuseable/reuseablewidget.dart';
import '../reuseable/text_constraint.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _passwordTextController = TextEditingController();

  final TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
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
                const EXHText(
                  'LOGIN',
                  fontSize: 26,
                  weight: FontWeight.normal,
                  color: Color.fromARGB(255, 3, 222, 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: PText(
                    "We're excited to have you on board and can't wait to see what you'll bring to our community.",
                    color: Colors.white,
                    fontSize: 14,
                    weight: FontWeight.normal,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20, left: 20, right: 20, top: 20),
                    child: reUsableTF(
                        "Email", Icons.call, false, _emailTextController)),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: reUsableTF(
                        "Password", Icons.lock, true, _passwordTextController)),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ResetPass(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
                    // FirebaseAuth.instance
                    //     .signInWithEmailAndPassword(
                    //         email: _emailTextController.text,
                    //         password: _passwordTextController.text)
                    //     .then((value) {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //       builder: (context) => AddProductScreen(),
                    //     ),
                    //   );
                    //   QuickAlert.show(
                    //     context: context,
                    //     type: QuickAlertType.success,
                    //     text: 'Log In Successful',
                    //     autoCloseDuration: const Duration(seconds: 2),
                    //   );
                    // }).onError((error, stackTrace) {
                    //   QuickAlert.show(
                    //     context: context,
                    //     type: QuickAlertType.error,
                    //     title: 'Oops...',
                    //     text: 'Your email or password is incorrect',
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
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20),
                  child: PText(
                    'By registering, you agree to our Terms and Conditions and Privacy Policy.',
                    fontSize: 12,
                    color: Colors.white,
                    weight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
