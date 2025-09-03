import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Thời khóa biểu'))),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //Text tài khoản
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Tài khoản',
                border: OutlineInputBorder(),
              ),
            ),

            //Giãn khoảng cách
            SizedBox(height: 20),

            //Text mật khẩu
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Mật khẩu',
                border: OutlineInputBorder(),
              ),
            ),

            //Giãn khoảng cách
            SizedBox(height: 20),

            //Button login
            ElevatedButton(onPressed: login, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}

void login() {}
