int len;
public void setup() {
  size(750, 750);
  background(0);
  noLoop();
  len = 64;
}

public void draw() {
  background(0);
  Cluster garv = new Cluster(width/2, height/2, len, (float)(Math.random() * 2 * PI));
}

public void mousePressed()
{
  redraw();
}
