PImage stars;
PImage icon;
float ux = width / 2, uy = height / 2;
boolean up = false, down = false, left = false, right = false;

Planet p = new Planet(0, 0, 500, 1, true);

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

void draw() { 
  float speed = 10;
  //image(stars, 0, 0, width, height);
  background(0);
  noStroke();
  translate(ux, uy);
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

  p.render();
}
