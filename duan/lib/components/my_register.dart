import 'package:flutter/material.dart';
import 'package:flutter_demo_14/json/login.dart';
<<<<<<< HEAD
import 'package:flutter_demo_14/ui/login/login_screen.dart';
=======
>>>>>>> 960df51dca873c1d27a65d60f9f645a6bc567fed

class MyRegister extends StatelessWidget {
  final Function()? onTap;

  const MyRegister({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
            (route) => false);
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Register",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
