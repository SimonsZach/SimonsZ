void setup() {
  ReverseNumbers test = new ReverseNumbers(234);
  System.out.println(test + " reversed is " + test.getReverse()+"\n");



  test.setNumber(111);
  System.out.println(test + " reversed is " + test.getReverse()+"\n");

  //test.setNumber(9005);
  //System.out.println(test + " reversed is " + test.getReverse()+"\n");

  //test.setNumber(84645);
  //System.out.println(test + " reversed is " + test.getReverse()+"\n");

  //test.setNumber(8547);
  //System.out.println(test + " reversed is " + test.getReverse()+"\n");

  //test.setNumber(123456789);
  //System.out.println(test + " reversed is " + test.getReverse()+"\n");
}


public class ReverseNumbers {
  private int number;

  public ReverseNumbers(int num) {
    number=num;
  }

  public void setNumber(int x) {
    number = x;
  }

  public int getReverse() {
    int rev=0; 
    while (number >0){
      rev = rev*10 + number % 10;
      number = number /10;
    }

    return rev;
  }

  //add  a toString  
  public String toString() {


    return ""+number;
  }
}
