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