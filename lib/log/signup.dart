import 'package:flutter/material.dart';
import '../PredModel.dart';
import '../reuseable/reuseablewidget.dart';
import '../reuseable/text_constraint.dart';
import 'login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController _passwordTextController = TextEditingController();

  final TextEditingController _nameTextController = TextEditingController();

  final TextEditingController _phoneTextController = TextEditingController();

  final TextEditingController _emailTextController = TextEditingController();
  // final fireStore = FirebaseFirestore.instance.collection('users');

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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: PText(
                    "SIGNUP",
                    fontSize: 26,
                    weight: FontWeight.w500,
                    color: Color.fromARGB(255, 3, 222, 14),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: PText(
                    "We're thrilled to have you join our community.",
                    fontSize: 12,
                    weight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: reUsableTF(
                        "Name", Icons.person, false, _nameTextController)),
                Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: reUsableTF(
                        "Email", Icons.email, false, _emailTextController)),
                Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: reUsableTF("Phone Number", Icons.call, false,
                        _phoneTextController)),
                Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: reUsableTF(
                        "Password", Icons.lock, true, _passwordTextController)),
                Align(
                  alignment: Alignment.topCenter,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PredModel(),
                        ),
                      );

                      // setState(() {});
                      // String id = DateTime.now().microsecondsSinceEpoch.toString();
                      // fireStore
                      //     .doc(id)
                      //     .set({
                      //       'name': _nameTextController.text,
                      //       'phone': _phoneTextController.text,
                      //       'email': _emailTextController.text,
                      //       'password': _passwordTextController.text,
                      //       'id': id,
                      //     })
                      //     .then((value) {})
                      //     .onError((error, stackTrace) {
                      //       print('there is an issue');
                      //     });

                      // FirebaseAuth.instance
                      //     .createUserWithEmailAndPassword(
                      //         email: _emailTextController.text,
                      //         password: _passwordTextController.text)
                      //     .then((value) {
                      //   Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (context) => Login(),
                      //     ),
                      //   );

                      //   QuickAlert.show(
                      //     context: context,
                      //     type: QuickAlertType.success,
                      //     text: 'Registeration Successful ',
                      //     autoCloseDuration: const Duration(seconds: 2),
                      //   );
                      // }).onError((error, stackTrace) {
                      //   QuickAlert.show(
                      //     context: context,
                      //     type: QuickAlertType.error,
                      //     title: 'Oops...',
                      //     text:
                      //         'Try To Write Correct Email Format or Strong Password',
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
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: EXHText(
                    "Or Continue With Login",
                    fontSize: 18,
                    color: Colors.white,
                    weight: FontWeight.normal,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 3, 222, 14),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.login_rounded,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: const PText(
                    'By registering, you agree to our Terms and Conditions and Privacy Policy.',
                    fontSize: 12,
                    color: Colors.white,
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
