HashMap<String, Integer> map = new HashMap<String, Integer>();

class DigitNotFoundException extends Exception{}
class DigitIsTooBigException extends Exception{}

int getDigitAsInt(String s) throws DigitNotFoundException, DigitIsTooBigException{
    s = s.toUpperCase(); //agrees with dict
    Integer d = map.get(s);
    int output = -1;
    if( d==null ){
      println(s+" is no digit!");
      throw new DigitNotFoundException();
    } else {
      output = d.intValue();
    }
    if( output >= numericBase){
      throw new DigitIsTooBigException();
    }
    return output;
}

void initializeMap(){
  map.put("0", 0);
  map.put("1", 1);
  map.put("2", 2);
  map.put("3", 3);
  map.put("4", 4);
  map.put("5", 5);
  map.put("6", 6);
  map.put("7", 7);
  map.put("8", 8);
  map.put("9", 9);
  map.put("A", 10);
  map.put("B", 11);
  map.put("C", 12);
  map.put("D", 13);
  map.put("E", 14);
  map.put("F", 15);
  map.put("G", 16);
  map.put("H", 17);
  map.put("I", 18);
  map.put("J", 19);
  map.put("K", 20);
  map.put("l", 21);
  map.put("M", 22);
  map.put("N", 23);
  map.put("O", 24);
  map.put("P", 25);
  map.put("Q", 26);
  map.put("R", 27);
  map.put("S", 28);
  map.put("T", 29);
  map.put("U", 30);
  map.put("V", 31);
  map.put("W", 32);
  map.put("X", 33);
  map.put("Y", 34);
  map.put("Z", 35);
}