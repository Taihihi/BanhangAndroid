import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter_demo_14/utils/prefs.dart';
import 'package:flutter_demo_14/ui/major_screen.dart';
import 'package:flutter_demo_14/pages/home_page.dart';
import 'package:flutter_demo_14/json/register.dart';
import 'package:flutter_demo_14/ui/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool _hidePassword = true;
  IconData _icon = Icons.visibility;
  void _doLogin() {
    final curState = _formKey.currentState!;
    curState.save();
    if (curState.validate()) {
      final formValue = curState.value;
      if (Prefs.username.isNotEmpty && Prefs.password.isNotEmpty) {
        if (formValue["username"] == Prefs.username &&
            formValue["password"] == Prefs.password) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (ctx) => LoginScreen()),
              (route) => false);
        } else {
          const snackBar =
              SnackBar(content: Text('Wrong username or password'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      } else {
        Prefs.setUsername(formValue["username"]);
        Prefs.setPassword(formValue["password"]);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (ctx) => LoginScreen()),
            (route) => false);
      }
    } else {
      const snackBar = SnackBar(content: Text('Validation failed'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 100),
                  FormBuilderTextField(
                    name: "username",
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      labelText: "username",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.maxLength(context, 50),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  FormBuilderTextField(
                    name: "email",
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      labelText: "email",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.maxLength(context, 70),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  FormBuilderTextField(
                    name: "password",
                    obscureText: _hidePassword,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      labelText: "password",
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          _hidePassword = !_hidePassword;
                          _icon = _hidePassword
                              ? Icons.visibility
                              : Icons.visibility_off;
                        }),
                        icon: Icon(_icon),
                      ),
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.minLength(context, 5),
                    ]),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 16),
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
            GestureDetector(
              onTap: _doLogin,
              // () {
              //   final curState = _formKey.currentState!;
              //   var message = "";
              //   curState.save();
              //   if (curState.validate()) {
              //     message = curState.value.toString();
              //   } else {
              //     message = 'Validation failed';
              //   }
              //   final snackBar = SnackBar(content: Text(message));
              //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
              // },

              child: Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
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
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //         child: Text(
            //           'Or continue with',
            //           style: TextStyle(color: Colors.grey[700]),
            //         ),
            //       ),
            //       Expanded(
            //         child: Divider(
            //           thickness: 0.5,
            //           color: Colors.grey[400],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // const SizedBox(height: 50),

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
            //               builder: (context) => (),
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
    );
  }
}
