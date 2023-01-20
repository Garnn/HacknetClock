class ScatterLine{
  float x;
  float size = random(10);
  void Scatter(){
    x = random(width);
    strokeWeight(size);
    line(x,0,x,height);
  }
}
