import 'dart:io';
import 'dart:convert';
import 'person.dart';

void main(){
  print('Hi, Im Humble Kind');

  Person person = Person("", "", "", 0, "");

  print('Humble Kind');
  print('1.Nhập dữ liệu từ bàn phím');
  print('2.Đọc dữ liệu từ file JSON');
  print('3.Hiển thị dữ liệu');
  print('4.Thoát');
  stdout.write('Bạn chọn chức năng nào: ');

  //Chọn chức năng
  int chon = int.parse(stdin.readLineSync()!);

    if(chon==1)
      person.Nhap();
    
    if(chon==2){
      try{
        String jsonString = File('data.json').readAsStringSync();
        List<dynamic> list = jsonDecode(jsonString); // parse thành List
        for (var item in list) {
          Person p = Person.fromJson(item);
          p.HienThi();  // hoặc thêm vào 1 danh sách Person
        }
        print('Đã đọc dữ liệu từ file JSON!');

      }catch (e){
        print('Lỗi đọc file JSON');
      }
    }

    if(chon==3)
      person.HienThi();

    if(chon==4){
      print('bye bye');
    }
  

}