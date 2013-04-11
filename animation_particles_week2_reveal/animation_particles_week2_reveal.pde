// Advanced animation

ArrayList<Particle> particles;
int particleSize;

void setup() {
  size(1280, 680);
  colorMode(HSB);
  smooth();
    background(0);
  particles = new ArrayList();
  particleSize = 20;
//  for (int i = 0; i < 1; i++)  {
//    particles.add(new Particle(0, 0));  
//  } 
}

void draw () {

  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).display();
  }
}

void mousePressed()
{
//  pushMatrix();
//  translate(mouseX, mouseY);
  particles.add(new Particle(mouseX, mouseY));  
//  popMatrix();
 // particles.get.display();
}

void keyPressed() {
//  if (key == ' ') {
//    clear = true;
//  }
//  
  if (key == '2'){
    particleSize = particleSize + 1;
  }
  
  if (key == '1') {
    particleSize = particleSize-1;
  }
}
