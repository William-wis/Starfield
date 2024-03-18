Particle cur;
oddBallParticle obp;
ArrayList<Particle> particles;

void setup() {
  size(500, 500);
  particles = new ArrayList<Particle> ();
  createParticle();
  obp = new oddBallParticle();
}


void draw() {
  background(0);

  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).move();
  }

  if (cur.reached() == true) {
    particles.remove(cur);
  }
  obp.move();
  createParticle();
  showParticles();
}

void showParticles() {
  for (Particle p : particles) {
    p.show();
  }
  obp.show();
}



void createParticle() {
  cur = new Particle();
  particles.add(cur);
}
