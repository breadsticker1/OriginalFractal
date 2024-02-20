public void setup(){
  size(500,400);
  rectMode(CENTER);

}

public void draw(){
  background(0);
  myFractal(500,200,200);
  //flashlight
  fill(#8E8E8E);
  noStroke();
  arc(350, 200, 200, 200, radians(90), radians(270));
  rect(200,200,300,80);
  rect(240,200,50,100);
}

public void myFractal(int x, int y, int siz){
  fill(#FFFEF2);
  stroke(#F7F1B9);
  rect(x,y,siz,siz);
  if(siz > 10){
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
    myFractal(x,y-siz/2,siz/2);
    myFractal(x,y+siz/2,siz/2);
  }
}
