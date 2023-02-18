public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(float x, float y, int len, float ang)
  {
    Tendril[] stans = new Tendril[NUM_STEMS];
    for (int i = 0; i < stans.length; i ++) {
      stans[i] = new Tendril(x, y, len, ang + (2 * PI / 7 * i));
      stans[i].show();
    }
  }
}
