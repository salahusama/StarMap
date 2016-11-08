/* StarMap
 * OOP Lab Test 1
 * 
 * Salaheldin Akl
 * D15124122
 *
 */

ArrayList<Star> stars;

float border = 50;
float gridSize = 70; // size of 1 cell = (800 - 100) / 10 calculated by looking at video

void setup()
{
  size(800, 800);
  background(0);
  
  stars = new ArrayList<Star>();
  loadData();
}

void draw()
{
  grid();
  plotStars();
}