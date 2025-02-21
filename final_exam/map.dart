void main(){
  Map map = {
    'name': 'John',
    'age': 25,
    'city': 'New York'
  };

  print(map['name']);

  var allKeys = map.keys;
  //print with comma but not in list
  print(allKeys.join(', '));
  // print(allKeys);

  var allValues = map.values;
  print(allValues);
}