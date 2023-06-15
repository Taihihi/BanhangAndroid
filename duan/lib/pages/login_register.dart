// code chay dc ne nhaa

// // // file login_register.dar

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false; // Thêm biến cho xác nhận mật khẩu

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConfirmPassword =
      TextEditingController(); // Thêm controller cho xác nhận mật khẩu

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    if (_controllerPassword.text != _controllerConfirmPassword.text) {
      setState(() {
        errorMessage = 'Mật khẩu không khớp với mật khẩu xác nhận.';
      });
      return;
    }

    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _entryField(String title, TextEditingController controller,
      {bool isPassword = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: controller,
            obscureText: isPassword ? !isPasswordVisible : false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.white,
                      ),
                    )
                  : null,
            ),
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : 'Oops! $errorMessage',
      style: TextStyle(
        color: Colors.red,
      ),
    );
  }

  Widget _submitButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLogin
            ? signInWithEmailAndPassword
            : createUserWithEmailAndPassword,
        child: Text(
          isLogin ? 'Đăng Nhập' : 'Đăng Kí',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
          errorMessage = '';
        });
      },
      child: Text(
        isLogin
            ? 'Bạn chưa có tài khoản? Hãy Đăng Kí'
            : 'Bạn đã có tài khoản? Hãy Đăng Nhập',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(isLogin ? 'SHOP TTT' : 'SHOP TTT'), // Thay đổi tiêu đề
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/1.jpg'), // Đường dẫn tới hình ảnh nền
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          // Sử dụng SingleChildScrollView để cho phép cuộn trang khi nội dung vượt quá kích thước hiển thị
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                  height: 50), // Khoảng cách từ đỉnh form đến phần tiêu đề
              _title(
                  isLogin ? 'Đăng Nhập' : 'Đăng Kí'), // Hiển thị phần tiêu đề
              const SizedBox(
                  height: 50), // Khoảng cách từ phần tiêu đề đến form
              // const SizedBox(height: 50),
              _entryField('Email', _controllerEmail),
              _entryField('Password', _controllerPassword, isPassword: true),
              if (!isLogin)
                _entryField('Confirm Password', _controllerConfirmPassword,
                    isPassword: true),
              _errorMessage(),
              _submitButton(),
              _loginOrRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
