class Observation
{
  float y;
  int R = 0; 
  int G = 0; 
  int B = 0;
  float x;
  int n;
  int belongedSeed;
  Observation(int N)
  {
    n = N;
    x = random(50, width-50);
    y = random(50, height-50);
  }

  void Display()
  {
    strokeWeight(10);
    stroke(R, G, B);
    point(x, y);
  }

  float CalculateDistance(float x1, float y1, float x2, float y2)
  {
    float distance = dist(x1, y1, x2, y2);
    return distance;
  }

  void GetNearestSeed(Seed[] seed)
  {
    float distance =2000;
    for ( int i = 0; i < seed.length; i++)
    {
      float tempDistance = CalculateDistance(x, y, seed[i].x, seed[i].y);
      if ( tempDistance < distance)
      {
        distance = tempDistance;
        belongedSeed = i;
        seed[i].seedId = i;
        R = seed[i].R;
        G = seed[i].G;
        B = seed[i].B;
      }
    }
    //println(belongedSeed);
  }
  
}
