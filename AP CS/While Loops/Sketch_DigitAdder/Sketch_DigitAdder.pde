void setup() {
  int[] cases = {234, 10000, 111, 9005, 84645, 8547, 123456789};
  for (int item : cases) {
    System.out.println(DigitAdder.sumDigits(item)
      + " is the sum of the digits: " + item + "\n");
  }
}

public static class DigitAdder {
  public static int sumDigits( int num ) 
  {
    int sum = 0;
    while(num > 0)
    {
      sum = sum +num%10;
      num = num / 10;
    }
    return sum;
  }
}
