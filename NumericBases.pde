// Need G4P library
import g4p_controls.*;

//StyledString s;
GLabel glabel;
int numericBase = 16;
int baseDigits = 2;

public void setup(){
  size(1000, 400, JAVA2D);
  createGUI();
  customGUI();
  glabel = new GLabel(this, 0, 250, width, 100);
  glabel.setOpaque(true);
  //s = new StyledString("b9d8");
  //PFont f = createFont("Arial.tff", 50);
  
  //s.addAttribute(G4P.SUPERSCRIPT, G4P.SUPERSCRIPT_SUPER, 1, 2);
  //s.addAttribute(G4P.SUPERSCRIPT, G4P.SUPERSCRIPT_SUB, 3, 4);
  //glabel.setStyledText(s);
  //glabel.setTextBold(0,1);
  //glabel.setTextBold(2,3);
  glabel.setFont(   FontManager.getFont("Arial",30,30)   );
  glabel.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  initializeMap();
  //s.setText("hauehe");
  // Place your setup code here
  
}

public void draw(){
  background(0);
  
  //String[] fontList = PFont.list();
  //printArray(fontList);
  glabel.draw();
  textSize(30);
  text("In base 10:", 100, 235);
  text("base = "+numericBase, 450, 60);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}