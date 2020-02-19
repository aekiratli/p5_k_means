Observation[] observations = new Observation[8000];
Seed[] seeds = new Seed[5];

void setup()
{
  fullScreen();  
  background(155);

  for (int i = 0; i < observations.length; i++) {
    observations[i] = new Observation(observations.length);
    observations[i].Display();
  }

  for (int i = 0; i < seeds.length; i++) {
    seeds[i] = new Seed(seeds.length);
    seeds[i].Display();
  }
  delay(2000);
  /// debug ///
}
void draw()
{
  background(155);
  for (int i = 0; i < observations.length; i++)
  {
    observations[i].GetNearestSeed(seeds);
    observations[i].Display();
  }
  for (int i = 0; i < seeds.length; i++)
  {
    seeds[i].MeanOfCluster(observations);
    seeds[i].ItarateSeed();
    seeds[i].Display();
  }
  delay(100);
}
