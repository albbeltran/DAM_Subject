void setup() {
  size(400, 400);
  background(135, 206, 235);

  // Tronco
  fill(139, 69, 19);
  rect(180, 150, 40, 150);

  // Hojas
  fill(0, 128, 0);
  ellipse(200, 150, 175, 175);

  // Cuerpo de la casa
  fill(139, 69, 19);
  rect(150, 200, 100, 80);

  // Techo
  fill(255, 255, 255);
  triangle(150, 200, 250, 200, 200, 150);

  // Ventana
  fill(255);
  rect(160, 235, 20, 20);
  
  // Ventana
  fill(255);
  rect(220, 235, 20, 20);

  // Puerta
  fill(139, 69, 19);
  rect(190, 230, 20, 50);
  
  // Jardín
  fill(0, 150, 0);
  rect(0, 300, width, height);

  // Chimenea
  fill(101, 67, 33);
  rect(220, 150, 20, 40);
  rect(210, 140, 40, 10);
}

void draw() {
}
