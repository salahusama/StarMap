class Star
{
  String hab;
  String name;
  float distance;
  float Xg, Yg, Zg;
  float size;
  
  // Star constructor
  //
  Star(TableRow row)
  {
    this.hab = row.getString("hab?");
    this.name = row.getString("DisplayName");
    this.distance = row.getFloat("Distance");
    this.Xg = row.getFloat("Xg");
    this.Yg = row.getFloat("Yg");
    this.Zg = row.getFloat("Zg");
    this.size = row.getFloat("AbsMag");
  }
}