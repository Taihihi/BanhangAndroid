import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:scoped_model/scoped_model.dart';
import 'login_view_model.dart';
import '../major/major_screen.dart';
import '/utils/app_variables.dart';
import '/utils/prefs.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    final loginViewModel = LoginViewModel();

    void loginAction(var context, LoginViewModel model) async {
      _formKey.currentState!.save();
      if (_formKey.currentState!.validate()) {
        var formValue = _formKey.currentState!.value;
        final username = formValue['username'].toString();
        final password = formValue['password'].toString();
        final result = await model.login(username, password);
        if (result != null) {
          AppVariables.userInfo = result;
          Prefs.setUsername(username);
          Prefs.setPassword(password);

          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MajorScreen()),
              (route) => false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Wrong username or password!')));

          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(builder: (context) => MajorScreen()),
          //     (route) => false);
        }
      }
    }

    return ScopedModel(
      model: loginViewModel,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: FormBuilder(
                  key: _formKey,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'username',
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username'),
                        validator: FormBuilderValidators.required(context),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 16),
                      FormBuilderTextField(
                        name: 'password',
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password'),
                        validator: FormBuilderValidators.required(context),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () => loginAction(context, loginViewModel),
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
