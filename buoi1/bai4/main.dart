import 'dart:io';

void main(){
  //Khai báo biến
  int x;
  bool kiemTra=true;

  //Nhập x
  stdout.write('Nhập x: ');
  x = int.parse(stdin.readLineSync()!);

  if(x==2 || x>2)
    print('2 ');

  for(int i=3; i<x; i++){
    for(int j=2; j<i; j++){
      if(i%j==0){
        kiemTra=false;
        break;
      }
      else{
        kiemTra=true;
      }
    }
    if(kiemTra==true)
      print('$i ');
  }

}