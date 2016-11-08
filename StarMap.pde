/* StarMap
 * OOP Lab Test 1
 * 
 * Salaheldin Akl
 * D15124122
 *
 */

ArrayList<Star> stars;

float border = 50;

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
}

void grid()
{
  stroke(200, 0, 150);
  noFill();
  
  float x = border;
  float y = border;
  
  // vertical grid lines
  while (x <= width - border)
  {
    line(x, border, x, height - border);
    x += 50;
  }
  
  // horizontal grid lines
  while (y <= height - border)
  {
    line(border, y, width - border, y);
    y += 50;
  }
}