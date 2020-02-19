Observation[] observations = new Observation[1000];
Seed[] seeds = new Seed[5];

void setup()
{
  size(1000, 600);
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
  for (int i = 0; i < observations.length; i++)
  {
    observations[i].GetNearestSeed(seeds);
    observations[i].Display();
  }
}
