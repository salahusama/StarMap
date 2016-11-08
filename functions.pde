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
  int label;
  
  // vertical grid lines
  label = -5;
  while (x <= width - border)
  {
    text(label, x, border - 10);
    line(x, border, x, height - border);
    
    x += gridSize;
    label++;
  }
  
  // horizontal grid lines
  label = -5;
  while (y <= height - border)
  {
    text(label, border - 20, y);
    line(border, y, width - border, y);
    
    y += gridSize;
    label++;
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
    
    // add star name
    text(s.name, x + size, y + 2);
  }
}

void cross(float x, float y)
{
  stroke(255, 255, 0);
  line(x - 2, y, x + 2, y);
  line(x, y - 2, x, y + 2);
}