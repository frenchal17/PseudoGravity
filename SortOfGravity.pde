void setup(){
  size(500,500);
  background(255,255,255);
}

float t;
float xspeed = 1;
float yspeed;
float y;
float r = 25;
float x = r/2;
float multiplier = 500;
float shifter;
float colour = 0;

void draw(){
  shifter = multiplier * 1.875;
  background(255,255,255);
  x += xspeed;
  yspeed = multiplier * cos(t);
  y = 500 - yspeed;
  t += .034;
  if ((x > (width - r/2)) || (x < r/2)){
    xspeed = xspeed * -1;
  }
  if (y > 500){
    colour += 5;
    if (abs(multiplier) < 5){
      multiplier = 0;
    } else {
    multiplier = multiplier - shifter;
    }
  }
  fill(colour,colour,colour);
  ellipse(x,y,r,r);
}

//void mousePressed(){
//  colour = 0;
//  x = mouseX;
//  y = mouseY;
//  t = 0;
//  multiplier = 500 - y;
//}

void keyPressed(){
  if (key == ' '){
    colour = 0;
    x = mouseX;
    y = mouseY;
    t = 0;
    multiplier = 500 - y;
  }
  if (key == 's'){
    saveFrame("####.png");
  }
}

