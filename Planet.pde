
class Planet extends SpaceObject {
  float dist; // distance from the sun
  float angle;
  float speed;
  PShape p;
  PImage earth;
  PImage skin;
  Moon m;

  Planet(float planetR, float orbitR, float dist, float angle, float speed, PImage skin) {
    super(planetR, orbitR);
    this.dist = dist;
    this.angle = angle;
    this.speed = speed;
    this.skin = skin;
    p = createShape(SPHERE, planetR/2);
    m = new Moon(planetR/6, orbitR/6, dist/5, speed, angle);
  }

  void display() {
    pushMatrix();
      lights();
      rotateY(orbitR); // rotate planet around sun
      translate(dist, 0); 
      rotateY(orbitR); // spin planet on axis
      p.setTexture(skin);
      shape(p);  // draw planet
      m.display(); // draw moons!
    popMatrix();
    orbitR += 0.01;
  }
}
