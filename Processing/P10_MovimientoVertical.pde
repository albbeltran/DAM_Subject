int x1, x2, x3, x4, y1, y2, y3, y4;
boolean flag;

void setup() {
  x1 = 50;
  y1 = width / 2;
  y2 = y1;
  size(500,500);
  
  x3 = width / 2;
  y3 = 0;
  x4 = 100;
  y4 = 100;
  
  flag = true;
}

void draw() {
  background(0,0,0);
  stroke(0,100,255);
  strokeWeight(5);
  
  if(flag){
    line(x1++, y1, x2++, y2);
  
    fill(0, 0, 0);
    ellipse(x3, y3++, x4, y4);
    
    if(y3==500) { 
      flag = false;
    }
  } else {
      line(x1--, y1, x2--, y2);  

      fill(0, 0, 0);
      ellipse(x3, y3--, x4, y4);
  }
}
