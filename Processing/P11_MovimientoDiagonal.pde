int x1, x2, y1, y2;
boolean flag;

void setup() {
  size(500,500);
  
  flag = true;
}

void draw() {
  background(0,0,0);
  stroke(0,100,255);
  strokeWeight(5);
  
  fill(0, 0, 0);
  ellipse(x1, y1, 20, 20);
  
  if(flag){
    ellipse(x1++, y1++, 20, 20);
    
    if (x1 >= width || x1 <= 0) {
      flag = false;
    }
  }
  
  if(flag==false) {
    ellipse(x1--, y1--, 20, 20);
    
    if (y1 >= width || y1 <= 0) {
      flag = true;
    }
  }
}
