import 'package:flutter/material.dart';
import 'package:flutter_demo_12/components/my_register.dart';
import 'package:flutter_demo_12/components/my_textfield.dart';
import 'package:flutter_demo_12/components/square_tile.dart';
import 'package:flutter_demo_12/json/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<RegisterPage> {
  // text editing controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isChecked = false;
  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              // const Icon(
              //   Icons.lock,
              //   size: 100,
              // ),

              // const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'REGISTER',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),

              const SizedBox(height: 100),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          }),
                    ),
                    Text(
                      'I agree to the terms & conditions',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyRegister(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              // or continue with
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //   child: Text(
              //     'Or continue with',
              //     style: TextStyle(color: Colors.grey[700]),
              //   ),
              // ),
              // Expanded(
              //   child: Divider(
              //     thickness: 0.5,
              //     color: Colors.grey[400],
              //   ),
              // ),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              // google button
              // SquareTile(imagePath: 'lib/images/google.png'),

              // SizedBox(width: 25),

              // apple button
              // SquareTile(imagePath: 'lib/images/apple.png')
              //   ],
              // ),

              // const SizedBox(height: 50),

              // not a member? register now
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'Not a member?',
              //       style: TextStyle(color: Colors.grey[700]),
              //     ),
              //     const SizedBox(width: 4),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.pushAndRemoveUntil(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => LoginPage(),
              //             ),
              //             (route) => false);
              //       },
              //       child: Text(
              //         'Register Now',
              //         style: TextStyle(
              //           color: Colors.blue,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
