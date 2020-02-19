class Seed
{
  float x;
  int R, G, B;
  float y;
  int n;
  Seed(int N)
  {
    R = round(random(0,255));
    G = round(random(0,255));
    B = round(random(0,255));
    x = random(50, width-50);
    y = random(50, height-50);
    n = N;
  }
  void Display()
  {
    stroke(R,G,B);
    strokeWeight(40);
    point(x,y);
  }
  void MeanOfCluster()
  {
  }
  void itarateSeed()
  {
  }
}
