import 'dart:io';

class Pho{
  int _thitBo;
  int _banhPho;
  int _hanh;
  int _nuoc;

  //Hàm khởi tạo
  Pho(this._thitBo, this._banhPho, this._hanh, this._nuoc);

  //Hàm hủy


  //Hàm nhập dữ liệu
  void Nhap(){
    stdout.write('Nhập số lượng thịt bò(g): ');
    _thitBo = int.parse(stdin.readLineSync()!);
    stdout.write('Nhập số lượng bánh phở(g): ');
    _banhPho = int.parse(stdin.readLineSync()!);
    stdout.write('Nhập số lượng hành(g): ');
    _hanh = int.parse(stdin.readLineSync()!);
    stdout.write('Nhập số lượng nước(l): ');
    _nuoc = int.parse(stdin.readLineSync()!);
  }

  //Hàm hiển thị dữ liệu
  void HienThi(){
    print('Số lượng thịt bò: $_thitBo g');
    print('Số lượng bánh phở: $_banhPho g');
    print('Số lượng hành: $_hanh g');
    print('Số lượng nước: $_nuoc g');
  }

  //Tính giá
  double TinhGia(){
    return _thitBo*5 + _banhPho*2 + _hanh*0.5 + _nuoc*1; 
  }
}