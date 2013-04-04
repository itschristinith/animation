// Advanced animation

ArrayList<Particle> particles;

void setup() {
  size(1280, 680);
  colorMode(HSB);
  smooth();
    background(0);
  particles = new ArrayList();
  for (int i = 0; i < 1; i++)  {
    particles.add(new Particle(0, 0, 0));  
  } 
}

void draw () {

  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).display();
  }
}

void mousePressed()
{
  particles.add(new Particle(mouseX, mouseY, 0));  
}

