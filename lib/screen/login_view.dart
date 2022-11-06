import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  void test() {
    print("Test");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: _loginForm(),
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Field(
                obscureText: false,
                iconField: Icons.person,
                title: "Username",
                func: test),
            _Field(
                obscureText: true,
                iconField: Icons.security,
                title: "Password",
                func: test),
            _loginButton(title: "Login")
          ],
        ),
      ),
    );
  }

  Widget _Field(
      {required bool obscureText,
      required IconData iconField,
      required String title,
      required Function func}) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(icon: Icon(iconField), hintText: title),
      validator: (value) => func(),
    );
  }

  Widget _loginButton({required String title}) {
    return ElevatedButton(onPressed: () {}, child: Text(title));
  }
}
