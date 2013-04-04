class Particle {

  //float xx, yy, particleSize;
  float posY = 0; 
  float posX = 0;
  float x;
  float y;
  float translateY;

  Particle (float _x, float _y, float _translateY) {
    x = _x;
    y = _y;
    translateY = _translateY;
  }

  void display() {
    translateY += 1;
    if (translateY >= height+100) translateY = 0;

    pushMatrix();
    noStroke();
    fill(random(100,255), random(150,255), random(200,255));
    smooth();

    translate (0, height-translateY);
    y = noise(posY) * 100;
    posY += 0.01;
    x += 3;
    y+=2;
  //  if (x>width) x = 0;

    ellipse(x, y, 20, 20);
    popMatrix();
  }
}

