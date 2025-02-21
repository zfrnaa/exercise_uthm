import 'dart:io';

void main() {
  int? check = int.parse(stdin.readLineSync()!);
  bool compareCheck;

  if (check < 75 && check >= 8){
    compareCheck = true;
    print('Compare Check is $compareCheck');
  } else {
    compareCheck = false;
  }
}
