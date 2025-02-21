int add(int a, int b) {
  return a + b;
}

int average(int a, int b) {
  return (a + b) ~/ 2;
}


void main() {
  int addresult = add(5, 3);
  double avg = average(5, 3).toDouble();
  print('Sum numbers: $addresult, Average: $avg');
  print('${addList([1, 2, 3, 4, 5])}');
}
int addList(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}