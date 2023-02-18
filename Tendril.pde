class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private float myX, myY, endX, endY;
  private int myNumSegments, myO;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(float x, float y, int len, float theta)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
    myO = 0;
  }
  public void show()
  {
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += (Math.random() * 0.4) - 0.2;
      endX = myX + cos((float)(myAngle)) * SEG_LENGTH;
      endY = myY + sin((float)(myAngle)) * SEG_LENGTH;
      strokeWeight(1);
      if (myNumSegments >= 16) {
        stroke(255);
      }
      line(myX, myY, endX, endY);
      strokeWeight(1.5);
      if (myNumSegments >= 64) {
        stroke(#FF3333, myO);
      } else if (myNumSegments >= 16) {
        stroke(#779933, myO + 50);
      } else if (myNumSegments >= 4) {
        stroke(#00FFFF);
      } else {
        stroke((float)Math.random() * 255, (float)Math.random() * 255, (float)Math.random() * 255);
      }
      line(myX, myY, endX, endY);
      myX = endX;
      myY = endY;
      myO += 10;
    }

    if (myNumSegments >= 4) {
      Cluster nooaahh = new Cluster(endX, endY, myNumSegments/4, (float)myAngle);
    }
  }
}
