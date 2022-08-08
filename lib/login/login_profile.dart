import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('ASYAS'),
        ),
      ),
      body: ListView(
        children: [
          HeaderWidget(),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30),
          Text('Начни сегодня', style: TextStyle(fontSize: 22, color: Colors.black)),
          SizedBox(height: 30),
          FormLogin(),
        ],
      ),
    );
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _authTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
   final login = _authTextController.text;
   final password = _passwordTextController.text;
   if (login == 'admin' && password == 'admin') {
     errorText = null;
     
     final navigator = Navigator.of(context);
    navigator.push(MaterialPageRoute(builder: (context) => HomePageShop()));
   }
   else {
     errorText = 'Не верный логин или пароль';
   }
   setState(() {

   });
  }

  void _resetPassword() {}


  @override
  Widget build(BuildContext context) {
    final textFieldDecorator = const InputDecoration(
        border: OutlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10));
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(errorText,
        style: TextStyle(
          color: Colors.red,
          fontSize: 17,
        )),
          SizedBox(height: 15),
        ],

        Text('Login', style: TextStyle(fontSize: 18, color: Colors.black)),
        SizedBox(height: 5),
        TextField(
          controller: _authTextController,
          decoration: textFieldDecorator,
        ),
        SizedBox(height: 15),
        Text('Password', style: TextStyle(fontSize: 18, color: Colors.black)),
        SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink.shade100),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                onPressed: _auth,
                child: Text('Начать сейчас')),
            SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'Вы забыли пароль?',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.pink.shade100,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
