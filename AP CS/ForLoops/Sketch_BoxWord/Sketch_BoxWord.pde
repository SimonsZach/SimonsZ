void setup() {
  BoxWord b = new BoxWord("box");
  System.out.println(b);
  b.setWord("loop");
  System.out.println(b);
  b.setWord("strings");
  System.out.println(b);
}

 String x;
public class BoxWord {
  private String word;

  public BoxWord() {
  
  }

  public BoxWord(String s) {
   word=s;
  }

  public void setWord(String s) {
    word = s;
  }

  public String countWords( ) {
  
    for ( int i = 0; i< word.length(); i++ )
 x = x +"\n"+word;
 
    return x;
    
  }

  public String toString() {
   x = "";
    return word + "\n"+countWords();
  }
}
