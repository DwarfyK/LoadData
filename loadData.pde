Table table;
int x,y;
void setup(){
  size(1920, 1080);
  table = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv", "header");
  for(TableRow q: table.rows()){
    String Hector = q.getString("state"); 
    int Hesus = q.getInt("area (sq. mi)");
    println("state:", Hector,"area",Hesus,"sq. mi");
    x = (Hesus / 500);
    y += 15;
    if(x>5){
      rect (120, y,x, 10);
    }
    else{
      rect (120, y,2, 10);}
      text(Hector,0,y+8);
      text(Hesus+"sq. mi",x+125,y+8);
     
  }
}
