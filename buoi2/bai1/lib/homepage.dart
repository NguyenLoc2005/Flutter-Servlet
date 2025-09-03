import 'package:flutter/material.dart';

class CaculatorScreen extends StatefulWidget {
  const CaculatorScreen({super.key});

  @override
  State<CaculatorScreen> createState() => _CaculatorScreenState();
}

class _CaculatorScreenState extends State<CaculatorScreen> {
  final TextEditingController _number1_controller = TextEditingController();
  final TextEditingController _number2_controller = TextEditingController();

  int? _sum; // Biến lưu kết quả


  void _caculatorSum() {
    final String number1 = _number1_controller.text;
    final String number2 = _number2_controller.text;

    final int? so1 = int.tryParse(number1);
    final int? so2 = int.tryParse(number2);

    if (so1 == null || so2 == null) {
      setState(() {
        _sum = null;
      });
      return;
    }

    setState(() {
      _sum = so1 + so2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bài 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children:[
            TextField(
              controller: _number1_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Hint nhập số thứ nhất",
                labelText: "Label nhập số thứ nhất",
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: _number2_controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Hint nhập số thứ 2",
                labelText: "Label nhập số thứ 2",
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _caculatorSum,
              child: Text('Tính tổng'),
            ),

            SizedBox(height: 20),

            Text('Kết quả: ${_sum ?? 'Chưa tính hoặc nhập sai số'}'),
          ],
        ),
      ),
    );
  }
}
