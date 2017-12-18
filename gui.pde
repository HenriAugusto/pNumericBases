/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void numberUpdated(GTextField source, GEvent event) { //_CODE_:number:220585:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
  glabel.setText("");
  String input = source.getText();
  println("input.toString() = ["+input.toString()+"]");
  println("input.length() = "+input.length());
  
  
  /*for( int i=0;i<=input.length();++i){
    String temp = glabel.getText();
    int e = input.length()-i-1;
    glabel.setText( temp+ 
          input.charAt(i)+"*"+numericBase+e
          );
  }
  */
  //idk thy this is needed
  StyledString s = new StyledString("                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ");//idkwhythisisneeded
  if( input.equals(" ") == true){
    println("empty input. nothing to do here");
    return;
  }
  //s.clearAttributes();
  int sum=0;
  for( int i=0;i<input.length();i++){
    int e = i;
    String prefix = i==input.length()-1 ? "" : "+";
    int prefixL = prefix.length(); 
    s.insertCharacters(prefix+input.charAt(input.length()-1-i)+"*"+numericBase+""+e,0,false,false);
    s.addAttribute(G4P.SUPERSCRIPT, G4P.SUPERSCRIPT_SUPER, 2+baseDigits+prefixL, 3+baseDigits+prefixL);
    println("input.charAt(input.length()-1-i) = "+input.charAt(input.length()-1-i));
    String strDigit = new String(    input.charAt(input.length()-1-i)+""  );
    try{
      sum += getDigitAsInt(strDigit)*pow(numericBase,e) ;
    } catch(DigitNotFoundException dnfe){
      sum = -1;
      s.setText("invalid digit: "+strDigit);
      glabel.setStyledText(s);
      return;
    } catch(DigitIsTooBigException ditbe){
      sum = -1;
      s.setText("the digit "+strDigit+" doesn't exist in base "+numericBase+"!");
      glabel.setStyledText(s);
      return;
    }
  }
  println("s = "+s.getPlainText() );
  println("s.length() = "+s.length());
  if(s.length()>1){
    //s.addAttribute(G4P.SUPERSCRIPT, G4P.SUPERSCRIPT_SUPER, 1, 2);
  }
  println("sum = "+sum);
  
  s.insertCharacters(" = "+sum,s.length(),false,false);
  glabel.setStyledText(s);
} //_CODE_:number:220585:

public void baseUpdated(GTextArea source, GEvent event) { //_CODE_:baseControl:508018:
  //println("textarea1 - GTextArea >> GEvent." + event + " @ " + millis());
  String input = source.getText();
  input = input.replaceAll(" ","");
  try{
    numericBase = Integer.parseInt(input);
  } catch(NumberFormatException e){
    println("Wrong numeric base: "+source.getText());
    return;
  }
  baseDigits = source.getText().length();
  if( source.getText().contains(" ")==true ){
    //int[] caretPosBefore =baseControl.getCaretPos();
    //baseControl.setText(input);
    //baseControl.moveCaretTo(caretPosBefore[0], caretPosBefore[1]-2);  
  }
  
  println("new numeric base is "+numericBase);
} //_CODE_:baseControl:508018:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  number = new GTextField(this, 35, 20, 152, 49, G4P.SCROLLBARS_NONE);
  number.setPromptText("enter number");
  number.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  number.setOpaque(true);
  number.addEventHandler(this, "numberUpdated");
  baseControl = new GTextArea(this, 220, 22, 161, 46, G4P.SCROLLBARS_NONE);
  baseControl.setText("16");
  baseControl.setPromptText("enter numeric base");
  baseControl.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  baseControl.setOpaque(true);
  baseControl.addEventHandler(this, "baseUpdated");
}

// Variable declarations 
// autogenerated do not edit
GTextField number; 
GTextArea baseControl; 