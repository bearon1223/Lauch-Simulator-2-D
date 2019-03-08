PImage stars;
PImage icon;
float ux = width / 2, uy = height / 2;
boolean up = false, down = false, left = false, right = false, map = false, pressed = false;
float zoom = 0;

Rocket r = new Rocket(100, 1);
Planet p = new Planet(0, 0, 500, 1, true, r);

void setup() {
  size(600, 400);
  surface.setResizable(true);
  surface.setTitle("Lauch Simulator 2D");
  stars = loadImage("Starfield.jpg");
  icon = loadImage("icon.jpg");
  surface.setIcon(icon);
  ux = width / 2;
  uy = height / 2;
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  //zoom += constrain(e, -10, 10);
}

void draw() { 
  float speed = 10;
  //image(stars, 0, 0, width, height);
  background(0);
  noStroke();
  translate(ux, uy);
  if (keyPressed && !pressed) {
    if ((key == 'm' || key == 'M') && map == true) {
      map = false;
    }
    if ((key == 'm' || key == 'M') && map == false) {
      map = true;
    }
    zoom = 0;
    pressed = true;
  } else if(pressed && !keyPressed){
    pressed = false;
  }
  if (map) {
    p.r = 100;
    if (keyPressed) {
      if (keyCode == LEFT) {
        left = true;
      } else if (keyCode == RIGHT) {
        right = true;
      }
      if (keyCode == UP) {
        up = true;
      } else if (keyCode == DOWN) {
        down = true;
      }
    } else {
      left = false;
      right = false;
      up = false;
      down = false;
    }
    if (left)
      ux+=speed;

    if (right)
      ux-=speed;

    if (up)
      uy+=speed;

    if (down)
      uy-=speed;
  } else {
    ux = width / 2;
    uy = height / 2;
    p.r = 1000;
  }
  p.render();
  r.movement();
  r.render();
}
