void checkNumber(int num) {
    String result = (num > 0) ? 'Positive' : (num < 0) ? 'Negative' : 'Zero';
    print('Number is $result.');
}

List<int> applyOperation(int Function(int) operation, List<int> nums) {

    return nums.map(operation).toList();
}

void main (){

  checkNumber(5);

  List <int> numbers = [1, 2, 3, 4, 5];
  print('Doubled: ${applyOperation((n) => n * 2, numbers)}');
}