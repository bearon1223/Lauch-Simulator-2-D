class Rocket {
  float f, x, y, accel = 0, gravity;
  Rocket(float fuel, float gravityb) {
    f = fuel;
    x = 0;
    y = 0;
    gravity = gravityb;
  }

  void movement() {
    // ToDo: Translating Movement
    if (keyPressed && keyCode == UP) {
      accel += 0.2;
    } else if (y <= 0) {
      accel -= 0.1;
    } else {
      accel = 0;
    }
    y-=accel;
  }

  void render() {
    fill(255);
    rect(x - 5, y - 10, 10, 10, 1);
  }
}
