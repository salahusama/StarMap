void loadData()
{
  Table table = loadTable("HabHYG15ly.csv", "header");
  
  // get rows
  for (TableRow row: table.rows())
  {
    stars.add( new Star(row) );
  }
}

void printStars()
{
  for(Star s: stars) {
    println(s);
  }
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
    x += gridSize;
  }
  
  // horizontal grid lines
  while (y <= height - border)
  {
    line(border, y, width - border, y);
    y += gridSize;
  }
}

void plotStars()
{
  for (Star s: stars)
  {
    float x = s.Xg;
    float y = s.Yg;
    float size = s.size;
    
    // modify x and y to be mapped on to the new scale -5 to +5
    x = map(x, -5, 5, border, width - border);
    y = map(y, -5, 5, border, height - border);
    
    cross(x, y);
    stroke(255, 0, 0);
    ellipse(x, y, size, size);
  }
}

void cross(float x, float y)
{
  stroke(255, 255, 0);
  line(x - 2, y, x + 2, y);
  line(x, y - 2, x, y + 2);
}