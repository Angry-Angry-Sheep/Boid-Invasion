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
}

void boidBig(float x, float y)
{
  //body
  fill(0, 0, 0);
  circle(x, y, 60);
  fill(128, 128, 128);
  circle(x, y, 55);
  
  //eyes and mouth
  fill(255, 0, 0);
  circle(x+10, y-5, 7);
  circle(x-10, y-7, 7);
  rect(x-12, y+7, 25,5);
  
  //connection
  fill(181, 82, 82);
  rect(x-22, y-20, 2,40);
  rect(x+20, y-20, 2,40);
  
  //hat
  fill(214, 81, 81);
  rect(x-30, y-20, 60,5);
  triangle(x-25, y-20,x+25, y-20, x+2, y-30);
  triangle(x-30, y+15,x+30, y+15, x+2, y+28);
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
