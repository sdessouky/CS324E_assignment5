
class Moon extends SpaceObject {
  float dist; // distance from the planet
  float angle;
  float speed;
  PShape moon;
  PImage moonTexture;
  
  Moon(float planetR, float orbitR, float dist, float speed, float angle) {
    super(planetR, orbitR);
    this.dist = dist;
    this.speed = speed;
    this.angle = angle;
    moon = createShape(SPHERE, planetR);
    moonTexture = loadImage("https://www.solarsystemscope.com/textures/download/2k_eris_fictional.jpg");
    noStroke();
  }
  
  void display() {
    pushMatrix();
    lights();
    rotate(frameCount/(speed*10));  // rotate moon around planet
    translate(dist, 0);
    rotateY(frameCount/speed);  // rotate moon on axis
    moon.setTexture(moonTexture);
    shape(moon);
    popMatrix();
  }
}
