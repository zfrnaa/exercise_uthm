int factorial(int n) {
  if (n == 0) {
    return 1; // Base case: factorial of 0 is 1
  } else {
    return n * factorial(n - 1); // Recursive case: n * factorial(n-1)
  }
}

void main() {
  int number = 5;
  int result = factorial(number);
  print("The factorial of $number is $result");
}
