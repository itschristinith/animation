class Particle {
  float posY = 0; 
  float posX = 0;
  float x;
  float y;
  float yMove;

  Particle (float _x, float _y) {
    x = _x;
    y = _y;
  }

  void display() {
   
    noStroke();
    fill(random(100,255), random(150,255), random(200,255));
    smooth();
    yMove = noise(posY) * 100;
    posY += 0.02;
    x += 3;
    //y+=2;
    ellipse(x, y+yMove, particleSize, particleSize);
    
   // ellipse(y -yMove, x, particleSize, particleSize);
   
   }

}

