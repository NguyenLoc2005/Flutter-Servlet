import 'package:flutter/material.dart';
import 'package:quan_ly_cat_toc/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //Khai báo biến
  final TextEditingController userNameRegister = TextEditingController();
  final TextEditingController password1Register = TextEditingController();
  final TextEditingController password2Register = TextEditingController();
  String message = ""; //Thông báo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Đăng ký tài khoản"))),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            //Ô nhập tài khoản
            TextField(
              controller: userNameRegister,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Nhập tài khoản',
                border: OutlineInputBorder(),
              ),
            ),

            //Giãn khoảng cách
            SizedBox(height: 20),

            TextField(
              controller: password1Register,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Nhập mật khẩu',
                border: OutlineInputBorder(),
              ),
            ),

            //Giãn khoảng cách
            SizedBox(height: 20),

            TextField(
              controller: password2Register,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Nhập lại mật khẩu',
                border: OutlineInputBorder(),
              ),
            ),

            //Giãn khoảng cách
            SizedBox(height: 20),

            ElevatedButton(onPressed: register1, child: Text("Đăng ký")),

            // Text hiển thị message
            Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: message == "Đăng ký thành công"
                    ? Colors.green
                    : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void register1() {
    final String userName = userNameRegister.text;
    final String password1 = password1Register.text;
    final String password2 = password2Register.text;

    if (userName.isEmpty || password1.isEmpty || password2.isEmpty) {
      setState(() {
        message = "Đăng ký không thành công";
      });
    } else if (userName == "1" && password1 == "1" && password2 == "1") {
      setState(() {
        message = "Đăng ký thành công";
      });

      // đợi 2s rồi chuyển sang Login
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      });
    }
  }
}
