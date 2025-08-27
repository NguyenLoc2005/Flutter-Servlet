import 'dart:io';

void main(){
  //Khai báo mảng List
  List<int> so = [];
  int soLuong, tg;

  //Nhập vào số lương
  stdout.write('Nhập vào số lượng: ');
  soLuong = int.parse(stdin.readLineSync()!);
  
  //Nhập vào mảng List
  for(int i=0; i<soLuong; i++){
    stdout.write('Số thứ $i: ');
    tg = int.parse(stdin.readLineSync()!);
    so.add(tg);
  }

  //So sánh
  for(int i=0; i<soLuong; i++){
    for(int j=i+1; j<soLuong; j++){
      if(so[i]>so[j]){
        int tg=so[j];
        so[j]=so[i];
        so[i]=tg;
      }
    }
  }
  print('Mảng sau khi sắp xếp: $so');
}