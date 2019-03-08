class Planet {
  float x, y, r, gravity;
  boolean hasAtmo;
  color t = color(0);
  Planet(float xb, float yb, float rb, float gravityb, boolean atmo, Rocket rocket) {
    x = xb;
    y = yb + rb;
    r = rb;
    gravity = gravityb;
    hasAtmo = atmo;
  }

  void render() {
    if (hasAtmo) {
      fill(150, 150, 255);
      circle(x, y, r * 1.25);
    }
    fill(100, 100, 255);
    circle(x, y, r);
  }
}
