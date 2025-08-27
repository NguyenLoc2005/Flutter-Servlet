
import 'dart:io';

void main(){
  //Khai báo biến
  int thang, nam;

  //Nhập vào tháng
  stdout.write('Nhập vào tháng: ');
  thang = int.parse(stdin.readLineSync()!);
  //Nhập vào năm
  stdout.write('Nhập vào năm: ');
  nam = int.parse(stdin.readLineSync()!);

  //Xem ngày
  switch(thang){
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print('31 ngày');
      break;
    case 2:
      if(nam%4==0)
        print('28 ngày');
      else
        print('29 ngày');
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print('30 ngày');
      break;
  }

}