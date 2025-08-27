import 'dart:io';

import 'pho.dart';

void main(){
  //Khai báo đối tượng
  List<Pho> batPho = [];

  //Khai báo biến
  int n;

  print('Humble Kind');

  stdout.write('Nhập vào n số bát phở: ');
  n = int.parse(stdin.readLineSync()!);

  print('NHẬP DỮ LIỆU');
  for(int i=0; i<n; i++){
    int x=1;
    print('Nhập bát phở thứ $x: ');
    Pho pho = Pho(0, 0, 0, 0);
    pho.Nhap();
    batPho.add(pho);
    x++;
  }

  print('\n\nHIỂN THỊ DỮ LIỆU');
  for(int i=0; i<n; i++){
    int x=1;
    print('Bát phở thứ $x: ');
    batPho[i].HienThi();
    x++;
  }


}