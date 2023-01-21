ScatterLine[] lines;
PFont Font;
String hour,minute,second,entireTime;
float TextSizing;
void setup(){
  size(300,150);
  Font = loadFont("Kremlin-48.vlw");
  textFont(Font);
  textAlign(CENTER, CENTER);
  surface.setResizable(true);
  lines = new ScatterLine[10];
  for(int i = 0; i<lines.length; i++){
    lines[i]=new ScatterLine();
  }
}
void draw(){
  background(0,0,0);
  stroke(255,0,0);
  TextSizing = height*0.3;
  textSize(TextSizing);
  for(int i = 0; i<lines.length; i++){
    lines[i].Scatter();
  }
  stroke(0);
  fill(0);
  rect(0,0.2*height,width,0.6*height);
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
  entireTime = hour+":"+minute+":"+second;
  if (textWidth(entireTime)>width-40){
    TextSizing=TextSizing*0.5;
    textSize(TextSizing);
    entireTime = hour+":\n"+minute+":\n"+second;
  }
  text(entireTime,20,0.2*height+20,width-40,0.6*height-40);
}
