/* StarMap
 * OOP Lab Test 1
 * 
 * Salaheldin Akl
 * D15124122
 *
 */

ArrayList<Star> stars;

void setup()
{
  size(800, 800);
  
  stars = new ArrayList<Star>();
}

void draw()
{
  //...
}

void loadData()
{
  Table table = loadTable("HabHYG15ly.csv", "header");
  
  // get rows
  for (TableRow row: table.rows())
  {
    stars.add( new Star(row) );
  }
}