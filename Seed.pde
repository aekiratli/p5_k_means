class Seed
{
  int seedId;
  float x;
  int R, G, B;
  float y;
  int n;
  float[] mean = new float[2];
  float[] sum = new float[2];

  Seed(int N)
  {
    R = round(random(0, 255));
    G = round(random(0, 255));
    B = round(random(0, 255));
    x = random(50, width-50);
    y = random(50, height-50);
    n = N;
  }
  void Display()
  {
    stroke(R, G, B);
    strokeWeight(40);  
    point(x, y);
  }  
  void MeanOfCluster(Observation[] observations)
  {
    int count = 0;
    sum[0] = 0; 
    sum[1] = 0;
    mean[0] = 0; 
    mean[1] = 0;
    
    for ( int i = 0; i < observations.length; i++)
    {
      if ( observations[i].belongedSeed == seedId )
      {
        count = count + 1;
        sum[0] = sum[0] + observations[i].x;
        sum[1] = sum[1] + observations[i].y;
      }
    }
    mean[0] = sum[0] / count;
    mean[1] = sum[1] / count;
    println(seedId);
    println(" Old Location : x,y = %f %f", x, y);
    println(" New Location : x,y = %f %f", mean[0], mean[1]);
  }
  void ItarateSeed()
  {
    x = mean[0];
    y = mean[1];
  }
}
