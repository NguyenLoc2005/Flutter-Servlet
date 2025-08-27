import 'phanso.dart';
import 'dart:io';

void main(){
  PhanSo p1 = PhanSo(0, 0);
  PhanSo p2 = PhanSo(0 ,0);
  PhanSo p3 = PhanSo(0, 0);
  PhanSo kq = PhanSo(0, 0);

  //Nhập giá trị p1,p2,p3
  //Nhập giá trị p1
  print('Nhập vào p1');
  p1.Nhap();
  //Nhập giá trị p2
  print('Nhập vào giá trị p2');
  p2.Nhap();
  print('Nhập vào giá trị p3');
  p3.Nhap();

  kq=(p1.Nhan(p2)).Cong(p1).Tru(p2);

  kq.HienThi();
}