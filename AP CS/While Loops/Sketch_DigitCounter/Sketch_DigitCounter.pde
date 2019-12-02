void setup() {
  //add test cases 
  int[] cases = {234, 10000, 111, 9005, 84645, 8547, 123456789};
  for (int item : cases) {
    System.out.println(DigitCounter.countDigits(item)
      + " is the number of the digits of in " + item + "\n");
  }
}
public static class DigitCounter {
  public static int countDigits( int number ) {
  int count = 0;
  while (number > 0)
  {
    count ++;
   number = number / 10;
  }
  return count;
  }
}
