void main(){
  List <String> fruits = ['Apple', 'Banana', 'Pineapple', 'Durian', 'Mango'];
  Set <int> numbers = {1, 3, 5};

  Map <String, int> studentWithScore = {
    'Adam': 90,
    'Brendan': 80,
    'Cyan': 70
  };

  print('Fruits: $fruits');
  print('Numbers: $numbers');
  print('Student with score: $studentWithScore');

  studentWithScore.forEach((name, score) {
    print('$name scored $score.');
  });
}