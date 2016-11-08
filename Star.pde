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
    this.hab = row.getString(2);
    this.name = row.getString(3);
    this.distance = row.getFloat(12);
    this.Xg = row.getFloat(13);
    this.Yg = row.getFloat(14);
    this.Zg = row.getFloat(15);
    this.size = row.getFloat(16);
  }
  /*
  String toString()
  {
    String data;
    // use str() fxn to convert primitive data types to strings;
    return data;
  }*/
}