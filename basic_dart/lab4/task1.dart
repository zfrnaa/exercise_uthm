void main (){
  late String? name = null;
  print(name ?? "Guest");

  final String message = 'Hello, $name';
  const double pi = 3.14;

  int addition(int a, int b) => a + b;

  print('Yo $message, the Addition of two integers number are ${addition(5, 10)}\nValue of Pi is $pi');
}