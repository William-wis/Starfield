class oddBallParticle extends Particle { 
  
  oddBallParticle() {
  }

  void move() {
    myX += (int)(Math.random()*11) - 5;
    myY += (int)(Math.random()*11) - 5;
  }
  
  void show() {
    fill(myColor);
    rect((float)myX, (float)myY, 20, 20);
  }
}
