String[] rawhtml;
String [] shows;
String html;
int j = 0;

void setup(){
  fullScreen();
  rawhtml = loadStrings("https://jyllands-posten.dk/Indland/");
   int y = 0;
  
  textAlign(LEFT, TOP);
  textSize(10);
  
  for(int i = 0; i < rawhtml.length; i++) {
    y+=10;
    text(rawhtml[i], 10, y);
    //println(rawhtml[i]);
  }
  //println(""+rawhtml);
  
   shows = new String[rawhtml.length];


}

void draw(){
  for(int i = 0; i < rawhtml.length; i++){
    if(rawhtml[i].indexOf("title=") >= 0){
      //shows[j] = rawhtml[i-1];
      println(shows[j]);
      j++;
    }
  }
  //printArray(shows);
}
