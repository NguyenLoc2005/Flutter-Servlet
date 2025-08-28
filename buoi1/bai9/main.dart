import 'dart:io';

import 'student.dart';

void main(){
  List<Student> listStudent =[];
  int chon;

  do{
    print('Hi Im Humble Kind');
    print('1. Nhập dữ liệu');
    print('2. Hiển thị dữ liệu');
    print('3. Xem bảng xếp hạng');
    stdout.write('Bạn chọn chức năng nào: ');
    chon = int.parse(stdin.readLineSync()!);


    if(chon==1){
      Student student =  Student("", "", "", 0, "", "", 0, 0);
      student.Nhap();
      listStudent.add(student);
    }
    else if(chon==2){
      for(var i in listStudent){
        i.HienThi();
      }
    }
  }
  while(chon!=0);

}