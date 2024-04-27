class Noodle {
  
  float angle;
  float angleMen;
  
  float b_x;
  float b_y;
  
  float stick_x1;
  float stick_y11;
  float stick_y12;
  
  float stick_x2;
  float stick_y21;
  float tmp_y21;
  float stick_y22;
  
  float men_r;
 
  // constructor
  Noodle(float s_x, float s_y) {
    angle = 0;
    angleMen = 0;
    
    b_x = s_x;
    b_y = s_y;
    
    stick_x1 = -70;
    stick_x2 = 200;
    
    stick_y11 = -90;
    stick_y12 = -160;
    
    stick_y21 = -80;
    stick_y22 = -120;
    
    tmp_y21 = 0;
    
    men_r = 10;
  }
  
  // お椀
  void bowl() {
    pushMatrix();
    translate(b_x, b_y);
    
    fill(255);
    // 外皿
    ellipse(0, +325, 470, 170);
    
    // 内側ライン
    stroke(255, 30, 0);
    strokeWeight(5);
    ellipse(0, +325, 450, 150);
    
    // スープ
    noStroke();
    fill(139,69,19);
    ellipse(0, +325, 370, 100);
    
    popMatrix();
  }
  
  // 箸
  void stick() {
    pushMatrix();
    translate(b_x, b_y);
    
    // Chocolate
    stroke(210,105,30);
    strokeWeight(5);
    
    // 上の箸
    line(stick_x1, stick_y11 + sin(angle) * 35, stick_x2, stick_y12 + sin(angle) * 25);
    
    // 下の箸
    line(stick_x1, stick_y21 + sin(angle) * 40, stick_x2, stick_y22 + sin(angle) * 30);
    
    tmp_y21 = stick_y21 + sin(angle) * 40;
    
    popMatrix();
    // angle += 0.05;
  }
  
  // 麺
  void men() {
    pushMatrix();
    translate(b_x, b_y);
    noStroke();
    fill(255,215,0);
    
    // 本数
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 100; j++) {
        ellipse(stick_x1 + men_r * 2 * i + men_r * 0.5 * sin(j * angleMen), tmp_y21 + (men_r / 2) * j - 10, men_r, men_r);
        // println("x" + j + " = " + (stick_x1 + men_r * 2 * i + men_r * 2 * sin(angleMen)));
        angleMen += 0.00001;
      }
    }
    
    popMatrix();
  }
  
  void addAngle() {
    this.angle += 0.05; 
  }
  
  void change(float n_x, float n_y) {
    this.b_x = n_x;
    this.b_y = n_y;
  }
  
}
