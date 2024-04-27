import gifAnimation.*;

GifMaker gifExport;

Noodle ramen;

ArrayList<Item> gu = new ArrayList<Item>();
Item tmp;

float angle;

int all = 70;

void setup() {
  randomSeed(2);
  size(640, 640);
  ramen = new Noodle(width / 2, height / 2);
  for (int i = 0; i < all; i++) {
    tmp = new Item(random(width, width + 200 + i * 30), -1 * random(100, height));
    gu.add(tmp);
  }
  
  frameRate(60);
  /*
  gifExport = new GifMaker(this, "ramen.gif");
  gifExport.setRepeat(0);
  gifExport.setQuality(10);
  gifExport.setDelay(20);
  */
}

void draw() {
  
  // background(224,255,255);
  background(135,206,250);
  
  // 背景に具材を転がす
  for (int i = 0; i < all; i++) {
    int j = i;
    
    // i = 0:egg, 1, 2:ham, 3~:negi
    if (j == 2) {
      j = 1; 
    }
    else if (j >= 3) {
      j = 2; 
    }
    
    gu.get(i).make(j);
    gu.get(i).addAngle();
    gu.get(i).move();
  }
  
  // ラーメンを描く
  
  ramen.bowl();
  ramen.stick();
  ramen.men();
  ramen.addAngle();
  
  ramen.change(width / 2 + sin(angle) * 10, height / 2 + cos(angle) * 10);
  angle += 0.05;

  /*
  if (frameCount < 60 * 8) {
    gifExport.addFrame(); 
  }
  else {
    gifExport.finish();
  }
  */
}
