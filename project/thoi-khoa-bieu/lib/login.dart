import 'package:flutter/material.dart';
import 'package:quan_ly_cat_toc/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String message = ""; // Thông báo tình trạng login

  void login() {
    final String userName = userNameController.text;
    final String password = passwordController.text;

    setState(() {
      if (userName.isEmpty || password.isEmpty) {
        message = "Nhập vào tài khoản và mật khẩu";
      } else if (userName == "admin" && password == "1") {
        message = "Đăng nhập thành công";
      } else {
        message = "Sai tài khoản hoặc mật khẩu";
      }
    });
  }

  void register() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Register()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Thời khóa biểu'))),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField tài khoản
            TextField(
              controller: userNameController,
              decoration: InputDecoration(
                hintText: 'Tài khoản',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // TextField mật khẩu
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Mật khẩu',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Text hiển thị message
            Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: message == "Đăng nhập thành công"
                    ? Colors.green
                    : Colors.red,
              ),
            ),
            SizedBox(height: 20),

            // Row chứa 2 nút
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: login, child: Text("Đăng nhập")),
                ElevatedButton(
                  onPressed: register,
                  child: Text("Tôi chưa có tài khoản"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
