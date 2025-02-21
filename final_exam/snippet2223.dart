void main(){
  dynamic a;
  a= "yo";
  print(a);
  bool isTrue = false;
  print (isTrue);
  List <String> Fruits  =  ["Apple", "Banana", "Cranberry", "Dragon Fruit"];
  print (Fruits[1]);
  List<String> moreFruits = ["Elderberry", "Fig"];
  Fruits.addAll(moreFruits);
  print("Added some fruits to the list which are: $Fruits");
  Fruits.add('Grapes');
  print(Fruits);

  Set <String> fruitsSet = Fruits.toSet();
  print('Set only print unique value like this example: $fruitsSet ,\nwhere Banana is not repeated');

  Map<int, String> map = Fruits.asMap();
  print(map);

  Map<String, int> map2 = Map.fromEntries(Fruits.map((Fruits) => MapEntry(Fruits, Fruits.length)));
  print(map2);

  String name = "Flutter";
  print(name.substring(2));
}