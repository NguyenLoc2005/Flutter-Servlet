import 'dart:io';

class Person{
    String _CCCD;
    String _hoTen;
    String _namSinh;
    int _gioiTinh; //0.Nam 1.Nu
    String _queQuan;

    //Hàm khởi tạo
    Person(this._CCCD, this._hoTen, this._namSinh, this._gioiTinh, this._queQuan);

    //Hàm hủy


    //Hàm nhập
    void Nhap(){
        stdout.write('Nhập vào căn cước công dân: ');
        _CCCD = stdin.readLineSync()!;
        stdout.write('Nhập nhập họ tên: ');
        _hoTen = stdin.readLineSync()!;
        stdout.write('Nhập vào năm sinh: ');
        _namSinh = stdin.readLineSync()!;
        stdout.write('Nhập vào giới tính: ');
        _gioiTinh = int.parse(stdin.readLineSync()!);
        stdout.write('Quê quán: ');
        _queQuan = stdin.readLineSync()!;
    }


    //Hiển thị
    void HienThi(){
        print('CCCD: $_CCCD');
        print('Họ tên: $_hoTen');
        print('Năm sinh: $_namSinh');
        print('Giới tính: $_gioiTinh');
        print('Quê quánn: $_queQuan');
    }


}