class Particle {
  double myX, myY, mySpeed, myAngle, mySize;
  float inc;
  int myColor;
  boolean rch;

  Particle() {
    mySize = 0;
    myX = width/2;
    myY = height/2;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5+5;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    inc = 0.1;
    rch = false;
    //talp = map(mySpeed, )
  }

  boolean reached() {
    if (myX <= 0 || myX >= width || myY <= 0 || myY >= height) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
    mySize += inc;
  }

  void show() {
    stroke(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
