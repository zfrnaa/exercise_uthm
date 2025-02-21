void main (){

  // Using 'var' (type inference)
  var country = 'Malaysia';
  var population = '32_000_000';
  var gdp = 336.33; // billion dollars
  // 'dynamic' type can change types during runtime
  dynamic variable = 'Hello';
  print('dynamic variable: $variable with type: ${variable.runtimeType}');
  variable = 123; // No error
  print('dynamic variable: $variable with type: ${variable.runtimeType}');

  print('$country, with the population of $population has a GDP of $gdp billion dollars');

  dynamic anotherVariable = true;
  print(anotherVariable);
  anotherVariable = 3.14;

  print(anotherVariable);

}