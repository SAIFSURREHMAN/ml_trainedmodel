import 'package:flutter/material.dart';

TextField reUsableTF(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    style: const TextStyle(color: Colors.white, fontSize: 18),
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: const Color.fromARGB(255, 3, 86, 13),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white,
      ),
      labelText: text,
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 12, 13, 12))),
      labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
    ),
    keyboardType:
        isPasswordType ? TextInputType.visiblePassword : TextInputType.name,
  );
}

TextField reUsableTFML(
    String text, IconData icon, TextEditingController controller) {
  return TextField(
    style: const TextStyle(color: Colors.white, fontSize: 18),
    controller: controller,
    cursorColor: Colors.white,
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white,
      ),
      labelText: text,
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 19, 19, 19))),
      labelStyle:
          const TextStyle(color: Color.fromARGB(255, 71, 70, 70), fontSize: 18),
    ),
    keyboardType: const TextInputType.numberWithOptions(),
  );
}
