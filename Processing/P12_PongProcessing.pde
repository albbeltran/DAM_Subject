int ySize = 30;
int yMov1 = 230, yMov2 = 230;
float x1, y1, x2 = 20, y2 = 20;
int puntos1 = 0, puntos2 = 0;
float velY=2, velX=2;
color colorBarras = color(255, 0, 0);
color colorPelota = color(255);

void setup() {
  size(500,500);
}

void draw() {
  background(0);
  strokeWeight(5);
  
  // Linea divisora
  stroke(255);
  line(width/2, 500, width/2, 0);
  
  // Jugador 1
  stroke(colorBarras);
  line(50, yMov1, width/2-200, yMov1 + ySize);
  
  // Jugador 2
  line(450, yMov2, width/2+200, yMov2 + ySize);
  
  x1 += velX;
  y1 += velY;
  
  // Pelota
  strokeWeight(0);
  fill(colorPelota);
  ellipse(x1, y1, x2, y2);
    
  // Verificar colisión con la barra del jugador 1
  if ((x1 <= 50 && x1 >= 40) && y1 >= yMov1  && y1 <= yMov1 + ySize) {
    println("COLISIÓN CON JUGADOR 1");
    velX = abs(velX); // Rebote hacia la derecha
    velY = random(-2, 2);
  }
  
  // Verificar colisión con la barra del jugador 2
  if ((x1 >= 450 && x1 <= 460) && y1 >= yMov2 && y1 <= yMov2 + ySize) {
    velX = -abs(velX); // Rebote hacia la derecha
    velY = random(-2, 2);
  }
  
  // Colisión con bordes
  if (y1 <= 0 || y1 >= height) {
    velY = -velY;
  }
  
  // Puntos y reinicio
  if (x1 <= 0) {
    puntos2++;
    restart();
  } else if (x1 >= width) {
    puntos1++;
    restart();
  }
    
  // Marcador
  textSize(50);
  fill(255);
  textAlign(CENTER, CENTER);
  text(puntos1 + " - " + puntos2, width / 2, 50);
}

void keyPressed() {
  if (keyCode == UP) {
    yMov2 -= 10;
  } else if (keyCode == DOWN) {
    yMov2 += 10;
  }

  if (key == 'W' || key == 'w') {
    yMov1 -= 10;
  } else if (key == 'S' || key == 's') {
    yMov1 += 10;
  }
}

void restart() {
  x1 = int(random(225,275));
  y1 = 250;
}
