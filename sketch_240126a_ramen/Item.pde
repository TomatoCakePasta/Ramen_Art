class Item {
  
  float x;
  float y;
  
  float angle;
 
  // constructor
  Item(float _x, float _y) {
    x = _x;
    y = _y;
    angle = 0;
  }
  
  // 各具材は回転しながら落下
  
  void make(int i) {
    switch(i) {
      // egg
      case 0:
        egg();
        break;
        
      // ham
      case 1:
        ham();
        break;
        
      // negi
      case 2:
        negi();
        break;
        
      // other
      default:
        break;
    }
  }
  
  // Egg
  void egg() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    
    noStroke();
    fill(255);
    
    // 楕円
    ellipse(0, 0, 100, 150);
    
    // 黄身
    // Orange
    fill(255,165,0);
    ellipse(0, +30, 70, 70);
    
    popMatrix();
  }
  
  // 葱
  void negi() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    
    noFill();
    // Lime
    stroke(0,255,0);
    strokeWeight(8);
    
     // 緑の輪
     ellipse(0, 0, 30, 30);
   
     stroke(255);
     strokeWeight(2);
     
     // 内側に黄緑の輪
     ellipse(0, 0, 30, 30);

    popMatrix();
  }
  
  // ハム
  void ham() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    noStroke();
    
    // 外の円
    // FireBrick
    fill(178,34,34);
    ellipse(0, 0, 200, 200);
    
    // 内の円
    // LightPink
    fill(255,182,193);
    ellipse(0, 0, 195, 195);
    
    // 油身が2,3個
    // LemonChiffon
    // fill(255,250,205);
    fill(240,100,100);
    ellipse(0, 5, 170, 170);
    
    // Pink
    fill(255,200,203);
    ellipse(0, 50, 70, 55);
    
    ellipse(50, -50, 45, 40);
    
    // MistyRose
    fill(255,228,225);
    ellipse(35, 50, 50, 35);
    
    popMatrix();
  }
  
  void move() {
    x -= 2;
    y += 3;
  }
  
  void addAngle() {
    angle -= 0.05; 
  }
  
}
