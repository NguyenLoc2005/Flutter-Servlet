import 'dart:io';

class PhanSo{
  double _tuSo;
  double _mauSo;

  //Hàm khởi tạo
  PhanSo(this._tuSo, this._mauSo);

  //Cộng phân số
  PhanSo Cong(PhanSo p2){
    PhanSo tong = PhanSo(0, 1);

    tong._tuSo=_tuSo+p2._tuSo;
    tong._mauSo=_mauSo+p2._mauSo;

    return tong;
  }

  //Hiệu 2 phân số
  PhanSo Tru(PhanSo p2){
    PhanSo hieu = PhanSo(0,1);

    hieu._tuSo=_tuSo-p2._tuSo;
    hieu._mauSo=_mauSo-p2._mauSo;

    return hieu;
  }

  //Nhân 2 phân số
  PhanSo Nhan(PhanSo p2){
    PhanSo nhan = PhanSo(0,1);

    nhan._tuSo=_tuSo*p2._tuSo;
    nhan._mauSo=_mauSo*p2._mauSo;

    return nhan;
  }

  //Chia 2 phân số
  PhanSo Chia(PhanSo p2){
    PhanSo chia = PhanSo(0, 1);

    chia._tuSo=_tuSo / p2._tuSo;
    chia._mauSo=_mauSo / p2._mauSo;

    return chia;
  }

  //Nhập phân số
  void Nhap(){
    //Nhập tử số
    stdout.write('Nhập vào tử số: ');
    _tuSo = double.parse(stdin.readLineSync()!);
    //Nhập phân số
    stdout.write('Nhập vào phân số: ');
    _mauSo = double.parse(stdin.readLineSync()!);
  }

  //Hiển thị phân số
  void HienThi(){
    print('$_tuSo / $_mauSo');
  }
}