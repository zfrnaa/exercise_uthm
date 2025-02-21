void main(){
  print('Hello from Bhuzaf World');

  var superhero = ['Superman', 'Batman', 'Spiderman'];

  print(superhero.length);
  print(superhero[0] + superhero[2]);
  superhero.add('Bhuban');
  superhero.removeAt(2);
  print(superhero);

  var mappedSuperhero = superhero.map((superhero) => 'I love $superhero');
  print(mappedSuperhero);

  Map<String, int> vegetables = {
    'test':1
  };
  print(vegetables);
}