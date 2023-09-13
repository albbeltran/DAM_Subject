int x1, x2, y1, y2;

void setup() {
  y1 = 0;
  y2 = 30;
  x1 = width / 2;
  x2 = x1;
  size(500,500);
}

void draw() {
  background(0,0,0);
  stroke(0,100,255);
  strokeWeight(5);
  line(x1, y1, x2, y2);
  y1++;
  y2++;
  line(x1+30, y1, x2+30, y2);
  line(x1-50, y1, x2-50, y2);  
  line(x1+70, y1, x2+70, y2);  
}
