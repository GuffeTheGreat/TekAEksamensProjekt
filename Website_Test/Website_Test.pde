int page = 1;
int totalPageCount = 8;
boolean changed; 
int a = 0;
PImage Background[] = new PImage[totalPageCount+1]; 

void setup() {
  fullScreen();

  for (int i = 1; i <= totalPageCount; i++) { 
    Background[i] = loadImage("data/"+i+".jpg");
  }
}

void draw() {
  println(page);
  //background (0);
  //image(Background_1, 0, 0);


  if (page == a) {
    a = page;
  } else {
    changed = true;
    a = page;
  }

  if (changed == true) { 
    image(Background[page], 0, 0);
  }
}
