
import 'dart:io';

import 'person.dart';

class Student extends Person {
  String _maSV;
  double _diemGK;
  double _diemCK;

  //Hàm khởi tạo
  Student(super.CCCD, super.hoTen, super.namSinh, super.gioiTinh, super.queQuan, this._maSV, this._diemGK, this._diemCK);

  //Hàm nhập
  @override
  void Nhap(){
    super.Nhap();
    stdout.write('Nhập vào mã sinh viên: ');
    _maSV = stdin.readLineSync()!;
    stdout.write('Nhập vào điểm giữa kỳ:');
    _diemGK = double.parse(stdin.readLineSync()!);
    stdout.write('Nhập vào điểm cuối kỳ: ');
    _diemCK = double.parse(stdin.readLineSync()!);
  }

  //Hàm hiển thị
  void HienThi(){
    super.HienThi();
    print('Mã sinh viên: $_maSV');
    print('Điểm giữa kỳ: $_diemGK');
    print('Điểm cuối kỳ: $_diemCK');
  }
}
