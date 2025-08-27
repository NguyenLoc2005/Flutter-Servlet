import 'dart:io';
import 'dart:math' show sqrt;

void main(){
  double x, y, R, xA, yA;
  
  //Nhập bán kính R
  stdout.write('Nhập vào bán kính R: ');
  R = double.parse(stdin.readLineSync()!);
  
  //Nhập tọa độ
  stdout.write('Nhập vào tọa độ x: ');
  x = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập vào tọa độ y: ');
  y = double.parse(stdin.readLineSync()!);

  //Nhập tọa độ A
  stdout.write('Nhập vào tọa độ xA: ');
  xA = double.parse(stdin.readLineSync()!);
  stdout.write('Nhập vào tọa độ yA: ');
  yA = double.parse(stdin.readLineSync()!);

  //Tính khoảng cách từ A đến O
  double kc = sqrt((x-xA)*(x-xA) + (y-yA)*(y-yA));
  if (kc < R) {
    print('A nằm trong đường tròn');
  } else if (kc == R) {
    print('A nằm trên đường tròn');
  } else {
    print('A nằm ngoài đường tròn');
  }
}