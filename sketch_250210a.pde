//incomplete rn

void setup()
{
  size(600, 600);

  //Sky
  fill(25, 50, 66);
  rect(0, 0, 800, 800);

  //Boss
  fill(0, 0, 0);
  circle(300, 370, 550);
  fill(48, 48, 48);
  circle(300, 370, 525);

  fill(153, 0, 0);
  rect(120, 250, 150, 60);
  rect(330, 250, 150, 60);
  rect(150, 410, 300, 40);
  fill(255, 0, 0);
  rect(130, 260, 130, 40);
  rect(340, 260, 130, 40);
  rect(160, 420, 280, 20);

  fill(0, 0, 0);
  circle(80, 540, 205);
  circle(210, 520, 205);
  circle(330, 530, 200);
  circle(450, 540, 200);
  circle(550, 550, 200);
  boid(400,200);
  boid(500,400);
  boid(475,300);
  boid(425,500);
  boid(525,350);
  boid(325,350);
  boid(525,550);
  boidBig(300,300);
  boidBig(500,200);
  boidBig(400,400);
  boidHuge(400,300);
  boidHuge(500,100);
  boidHuge(500,500);
  UFO(100,300);
  boidBig(340,500);
  boidIntercepter(300,160);
}

void UFO(float x, float y) {
  
  //Flame
  fill(255,0,0);
  ellipse(x,y+15,70,70);
  fill(246,255,0);
  ellipse(x,y+20,40,40);
  
  // Body
  stroke(0, 0, 0);
  strokeWeight(2);
  fill(150, 150, 150);
  ellipse(x, y, 150, 50);
  
  // Dome
  fill(100, 200, 255);
  ellipse(x, y - 20, 60, 40);
  
  //Laser
  stroke(0, 255, 0);
  strokeWeight(4);
  line(x+50, y, 340,500);
  strokeWeight(2);
  stroke(255, 255, 255);
  line(x+50, y, 340,500);
  
  stroke(0, 255, 0);
  strokeWeight(4);
  line(x+25, y+10, 340,500);
  strokeWeight(2);
  stroke(255, 255, 255);
  line(x+25, y+10, 340,500);
  
  //Shield
  strokeWeight(0);
  fill(255,128,0, 128);
  ellipse(340,500,70,70);
  stroke(0, 0, 0);
  strokeWeight(2);
  
  //Lights
  fill(255, 0, 0);
  ellipse(x - 50, y, 10, 10);
  ellipse(x - 25, y + 10, 10, 10);
  ellipse(x, y + 15, 10, 10);
  ellipse(x + 25, y + 10, 10, 10);
  ellipse(x + 50, y, 10, 10);
  
  strokeWeight(1);
}

void boidIntercepter(float x, float y) {
  
  //Antennas
  stroke(0, 0, 0);
  strokeWeight(3);
  line(x - 15, y - 20, x - 35, y - 40);
  line(x + 15, y - 20, x + 35, y - 40);
  fill(255, 0, 0);
  ellipse(x - 35, y - 40, 10, 10);
  ellipse(x + 35, y - 40, 10, 10);
  
  line(x - 15, y + 20, x - 35, y + 40);
  line(x + 15, y + 20, x + 35, y + 40);
  fill(255, 0, 0);
  ellipse(x - 35, y + 40, 10, 10);
  ellipse(x + 35, y + 40, 10, 10);
  
  //Body
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(0, 0, 0);
  ellipse(x, y, 80, 60);
  fill(60, 60, 60);
  ellipse(x, y, 75, 55);
  
  //Eyes
  fill(255, 0, 0);
  beginShape();
  vertex(x - 15, y - 10);
  vertex(x - 5, y - 15);
  vertex(x + 5, y - 15);
  vertex(x + 15, y - 10);
  vertex(x + 5, y - 5);
  vertex(x - 5, y - 5);
  endShape(CLOSE);
  fill(255, 255, 255);
  strokeWeight(0);
  ellipse(x-2, y-10, 4, 7);
  
  //Mouth
  strokeWeight(1);
  fill(255, 0, 0);
  beginShape();
  vertex(x - 15, y + 5);
  vertex(x - 10, y + 15);
  vertex(x - 5, y + 5);
  vertex(x, y + 15);
  vertex(x + 5, y + 5);
  vertex(x + 10, y + 15);
  vertex(x + 15, y + 5);
  endShape(CLOSE);
  
  //Laser
  stroke(255, 0, 0);
  strokeWeight(4);
  line(x-35, y+40, 150,290);
  strokeWeight(2);
  stroke(255, 255, 255);
  line(x-35, y+40, 150,290);
  stroke(255, 0, 0);
  
  strokeWeight(4);
  line(x+35, y+40, 150,290);
  strokeWeight(2);
  stroke(255, 255, 255);
  line(x+35, y+40, 150,290);
  
  stroke(255, 0, 0);
  strokeWeight(4);
  line(x-35, y-40, 150,290);
  strokeWeight(2);
  stroke(255, 255, 255);
  line(x-35, y-40, 150,290);
  
  stroke(255, 0, 0);
  strokeWeight(4);
  line(x+35, y-40, 150,290);
  strokeWeight(2);
  stroke(255, 255, 255);
  line(x+35, y-40, 150,290);
}

void boidHuge(float x, float y)
{
  //body
  fill(0, 0, 0);
  circle(x, y, 60);
  fill(128, 128, 128);
  circle(x, y, 55);
  
  //eyes and mouth
  fill(255, 0, 0);
  rect(x+6, y-9, 9,5);
  rect(x-15, y-9, 9,5);
  rect(x-15, y+4, 30,5);
  
  //connection
  fill(0, 0, 0);
  rect(x-35, y-20, 2,42);
  rect(x+32, y-20, 2,42);
  
  //hat
  fill(0, 251, 255);
  ellipse(x, y-35, 50, 20);
  rect(x-45, y-35, 90,15);
  ellipse(x, y+30, 50, 20);
  rect(x-45, y+15, 90,15);
}

void boidBig(float x, float y)
{
  //body
  fill(0, 0, 0);
  circle(x, y, 50);
  fill(128, 128, 128);
  circle(x, y, 45);
  
  //eyes and mouth
  fill(255, 0, 0);
  circle(x+10, y-5, 7);
  circle(x-10, y-7, 7);
  rect(x-12, y+7, 25,5);
  
  //connection
  fill(255, 0, 0);
  rect(x-22, y-20, 2,42);
  rect(x+20, y-20, 2,42);
  
  //hat
  fill(0, 0, 255);
  rect(x-30, y-20, 60,5);
  triangle(x-25, y-20,x+25, y-20, x+2, y-30);
  triangle(x-30, y+20,x+30, y+20, x+2, y+30);
}

void boid(float x, float y)
{
  //body
  fill(0, 0, 0);
  circle(x, y, 40);
  fill(255, 255, 255);
  circle(x, y, 35);
  
  //eyes and mouth
  fill(255, 0, 0);
  circle(x+8, y-3, 7);
  circle(x-8, y-5, 5);
  rect(x-10, y+5, 20,2);
  
  //connection
  fill(181, 82, 82);
  rect(x-22, y-20, 2,40);
  rect(x+20, y-20, 2,40);
  
  //hat
  fill(214, 81, 81);
  rect(x-25, y-20, 50,5);
  triangle(x-25, y-20,x+25, y-20, x+2, y-35);
  triangle(x-30, y+15,x+30, y+15, x+2, y+28);
}

void draw()
{
  
}
