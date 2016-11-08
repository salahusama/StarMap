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

boolean drawLine = false;
float lineX, lineX2;
float lineY, lineY2;
String name1;
String name2;
float distance;

void setup()
{
  size(800, 800);
  background(0);
  
  stars = new ArrayList<Star>();
  loadData();
}

void draw()
{
  background(0);
  
  grid();
  plotStars();
  
  if (drawLine == true)
  {
    stroke(255, 255, 0);
    line(lineX, lineY, mouseX, mouseY);
  }
  else
  {
    stroke(255, 255, 0);
    line(lineX, lineY, lineX2, lineY2);
    
    distance = dist(lineX, lineY, lineX2, lineY2);
    // map distance to parcecs - rough scale
    distance = map(distance, 0, 700, 0, 10);
    text("Distance from " + name1 + " to " + name2 + " is " + distance + " parsecs", 340, 20);
    /***text at top as my screen is smaller than 800, so I cant see bottom :)***/
  }
}

void mouseClicked()
{
  for (Star s: stars)
  {
    float x = s.Xg;
    float y = s.Yg;
    
    // modify x and y to be mapped on to the new scale -5 to +5
    x = map(x, -5, 5, border, width - border);
    y = map(y, -5, 5, border, height - border);
    
    if (mouseX > x - (s.size/2) && mouseX < x + (s.size/2) && mouseY > y - (s.size/2) && mouseY < y + (s.size/2))
    {
      if (drawLine == false)
      {
        drawLine = true;
        lineX = x;
        lineY = y;
        name1 = s.name;
      }
      else // was true
      {
        // dont draw line anymore
        drawLine = false;
        
        // save coordinates and keep line
        lineX2 = x;
        lineY2 = y;
        name2 = s.name;
      }
      
    }// end if
  }// end for
}