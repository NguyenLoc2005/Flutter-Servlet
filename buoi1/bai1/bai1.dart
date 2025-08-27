import 'dart:math';
import 'dart:io';

void main(){
  print('Toi 123');
  //Khai bao bien
  double a,b;

  //Buoc1
  stdout.write('Nhập a:');
  a = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập b: ');
  b = double.parse(stdin.readLineSync()!);

  //Buoc2
  double dTHCN = a*b;

  //Buoc3
  double dTHT = (a/2)*(a/2)*pi;

  //Buoc4
  double dTGC = dTHCN - dTHT;

  //Buoc 5
  print('Diện tích phần gạch chéo là: $dTGC');
}
