String[] rawhtml;
String [] shows;
String html;
int j = 0;

void setup(){
  rawhtml = loadStrings("https://jyllands-posten.dk/");
   int y = 0;
  
  textAlign(LEFT, TOP);
  textSize(10);
  
  for(int i = 0; i < rawhtml.length; i++) {
    y+=10;
    text(rawhtml[i], 10, y);
    println(rawhtml[i]);
  }
  //println(""+rawhtml);
  
   shows = new String[75];


}

void draw(){
  for(int i = 0; i < rawhtml.length; i++){
    if(rawhtml[i].indexOf("<div class=\"show-title\">") >= 0){
      shows[j] = rawhtml[i+3];
      j++;
    }
  }
  //printArray(shows);
}
