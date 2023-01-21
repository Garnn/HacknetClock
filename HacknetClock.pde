ScatterLine[] lines;
PFont Font;
String hour,minute,second;
void setup(){
  size(300,150);
  Font = loadFont("Kremlin-48.vlw");
  textFont(Font);
  textAlign(CENTER);
  lines = new ScatterLine[10];
  for(int i = 0; i<lines.length; i++){
    lines[i]=new ScatterLine();
  }
}
void draw(){
  background(0,0,0);
  stroke(255,0,0);
  for(int i = 0; i<lines.length; i++){
    lines[i].Scatter();
  }
  stroke(0);
  fill(0);
  rect(0,25,width,height-50);
  fill(255,0,0);
  if (str(hour()).length()==1){
    hour = "0"+str(hour());
  }
  else{
    hour = str(hour());
  }
  if (str(minute()).length()==1){
    minute = "0"+str(minute());
  }
  else{
    minute = str(minute());
  }
  if (str(second()).length()==1){
    second = "0"+str(second());
  }
  else{
    second = str(second());
  }
  text(hour+":"+minute+":"+second,width/2,height/2+18);
}
