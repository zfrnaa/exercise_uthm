void main() {
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  // Adding elements
  fruits.add('Orange');
  // Removing elements
  fruits.remove('Banana');
  print('List of fruits: $fruits');

  // Looping through the list
  for (var fruit in fruits) {
    print(fruit);
  }

  Set<String> fruitsSet = {'Apple', 'Banana', 'Mango'};
  //remember set cannot have duplicate values
  fruitsSet.add('Orange');
  print('Set of fruits: $fruitsSet');

  // Map
  Map<String, String> fruitsMap = {
    'a': 'Apple',
    'b': 'Banana',
    'm': 'Mango'
  };
  fruitsMap['o'] = 'Orange';
  print('Map of fruits: $fruitsMap');
}