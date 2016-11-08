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
  
  // get rows 2 and 3
  stars.add( new Star(table.getRow(2)) );
  stars.add( new Star(table.getRow(3)) );
  
  // get rows 12 to 16
  for (int i = 12; i < 17; i++)
  {
    stars.add( new Star(table.getRow(i)) );
  }
}